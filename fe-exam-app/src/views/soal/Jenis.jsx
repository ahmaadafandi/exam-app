import React, { useCallback, useEffect, useState } from 'react';
import { Row, Col, Card, Table, Modal, Button } from 'react-bootstrap';
import { useNavigate } from 'react-router-dom';
import Swal from 'sweetalert2';
import withReactContent from 'sweetalert2-react-content';
import { debounce } from 'lodash';
import appConfig from 'config/appConfig';
import axios from 'axios';
import SearchEntries from 'components/Table/SearchEntries';
import Pagination from 'components/Table/Pagination';
import InputValidation from 'components/Form/InputValidation';

const Jenis = () => {
  const navigate = useNavigate();
  const [rows, setJenis] = useState([]);
  const [kategori, setKategori] = useState([]);
  const [isLoading, setIsLoading] = useState(true);

  const [currentPage, setCurrentPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);
  const [totalRows, setTotalRows] = useState(0);

  const [searchTerm, setSearchTerm] = useState('');
  const [searchTermDebounced, setSearchTermDebounced] = useState('');
  const [showing, setShowing] = useState(10);

  const [refetch, setRefetch] = useState(Math.random());
  const MySwal = withReactContent(Swal);

  const [showModal, setShowModal] = useState(false);
  const [showMultipleInsertModal, setShowMultipleInsertModal] = useState(false);

  const handleCloseMultipleInsertModal = () => setShowMultipleInsertModal(false);

  const handleShowMultipleInsertModal = () => {
    setInputs(initialMultipleInputs);
    setShowMultipleInsertModal(true);
  };

  useEffect(() => {
    axios
      .get(
        `${appConfig.baseurlAPI}/jenis?page=${currentPage}&per_page=${showing}&search=${searchTerm}&showing=${showing}&kategori_id=${selectedKategori}`
      )
      .then((data) => {
        console.log(data.data);
        setJenis(data.data.data.data);
        setKategori(data.data.kategori);
        setTotalPages(data.data.data.last_page);
        setTotalRows(data.data.data.total);
        setIsLoading(false);
      })
      .catch((error) => {
        if (error.response.status === 403) {
          navigate('/403');
        } else {
          console.log(error);
        }
        setIsLoading(false);
      });
  }, [currentPage, showing, searchTermDebounced, refetch]);

  const [modalData, setModalData] = useState(null);
  const [isEditing, setIsEditing] = useState(null);

  const [isLoadingBtn, setIsLoadingBtn] = useState(false);

  const [selectedKategori, setSelectedKategori] = useState('');

  /**
   * Initial form, reset input fields, and validate the form
   */

  const [formData, setFormData] = useState({
    kategori: '',
    jenis: ''
  });

  const initialFormData = {
    kategori: '',
    jenis: ''
  };

  const [formErrors, setFormErrors] = useState({
    kategori: '',
    jenis: ''
  });

  const validateForm = () => {
    let errors = {};
    let formIsValid = true;

    // Validate input name
    if (!formData.kategori) {
      formIsValid = false;
      errors.kategori = 'kategori is required';
    }

    setFormErrors(errors);
    return formIsValid;
  };

  /**
   * Handle searching, pagination, and showing data
   */

  const handlePageChange = (page) => {
    setCurrentPage(page);
  };

  const handleSearchDebounced = useCallback(
    debounce((value) => {
      setSearchTermDebounced(value);
    }, appConfig.debounceTimeout),
    []
  );

  const handleSearch = (event) => {
    const value = event.target.value;
    setCurrentPage(1);
    setSearchTerm(value);
    handleSearchDebounced(value);
  };

  const handleShow = (event) => {
    setIsLoading(true);
    setShowing(parseInt(event.target.value));
    setCurrentPage(1);
  };

  /**
   * Handle request
   */

  const handleAdd = () => {
    setModalData(null);
    setIsEditing(false);
    setFormData(initialFormData);
    setShowModal(true);
    console.log('oke');
  };

  const handleCloseModal = () => setShowModal(false);

  const handleEdit = (id) => {
    try {
      const data = rows.find((row) => row.id === id);

      setFormData({
        kategori: data.kategori_id,
        jenis: data.jenis
      });

      setModalData(data);
      setIsEditing(true);
      setShowModal(true);
    } catch (error) {
      if (error.response && error.response.status === 403) {
        navigate('/403');
      } else {
        console.log(error);
      }
    }
  };

  const handleChangeKategori = async (event) => {
    setIsLoading(true);
    const kategori_id_filter = event.target.value;
    setSelectedKategori(kategori_id_filter);
    console.log(kategori_id_filter);

    try {
      const response = await axios.get(
        `${appConfig.baseurlAPI}/jenis?page=${currentPage}&per_page=${showing}&search=${searchTerm}&showing=${showing}&kategori_id=${kategori_id_filter}`
      );

      console.log(response.data);
      setJenis(response.data.data.data);
      setTotalPages(response.data.data.last_page);
      setTotalRows(response.data.data.total);
    } catch (error) {
      if (error.response && error.response.status === 403) {
        navigate('/403');
      } else {
        console.log(error);
      }
    } finally {
      setIsLoading(false);
    }
  };

  const handleInputChange = (event) => {
    const { name, value } = event.target;
    setFormData({ ...formData, [name]: value });
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    setIsLoadingBtn(true);

    if (!isEditing) {
      if (validateForm()) {
        axios
          .post(`${appConfig.baseurlAPI}/jenis`, formData, {
            headers: {
              'Content-Type': 'multipart/form-data'
            }
          })
          .then((response) => {
            if (response.status === 201) {
              Swal.fire({
                title: 'Success!',
                text: 'Data created successfully',
                icon: 'success',
                timer: 1500
              }).then(() => {
                // $('.modal').modal('hide');
                setShowModal(false);
                setRefetch(Math.random());
                setFormData(initialFormData);
                setIsLoadingBtn(false);
              });
            } else {
              throw new Error('Network response was not ok');
            }
          })
          .catch((error) => {
            console.error('Error:', error);
            MySwal.fire({
              title: 'Oops...',
              html: 'Something went wrong.',
              icon: 'error',
              timer: 2000
            });
            setIsLoadingBtn(false);
          });
      }
    } else {
      if (validateForm()) {
        const data = new FormData();
        data.append('kategori', formData.kategori);
        data.append('jenis', formData.jenis);
        data.append('_method', 'put');
        axios
          .post(`${appConfig.baseurlAPI}/jenis/${modalData.id}`, data, {
            headers: {
              'Content-Type': 'multipart/form-data'
            }
          })
          .then((response) => {
            if (response.status === 201) {
              Swal.fire({
                title: 'Success!',
                text: 'Data updated successfully',
                icon: 'success',
                timer: 1500
              }).then(() => {
                // $('.modal').modal('hide');
                setShowModal(false);
                setRefetch(Math.random()); // refetch new data
                setFormData(initialFormData); // set initial value for input
                setIsLoadingBtn(false);
              });
            } else {
              throw new Error('Network response was not ok');
            }
          })
          .catch((error) => {
            console.error('Error:', error);
            MySwal.fire({
              title: 'Oops...',
              html: 'Something went wrong.',
              icon: 'error',
              timer: 2000
            });
            setIsLoadingBtn(false);
          });
      }
    }
  };

  /**
   * Handle delete request
   */

  const handleConfirmationDelete = (id) => {
    Swal.fire({
      title: 'Are you sure?',
      text: "You won't be able to revert this!",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
      if (result.isConfirmed) {
        handleDelete(id);
      }
    });
  };

  const handleDelete = (id) => {
    axios
      .delete(`${appConfig.baseurlAPI}/jenis/${id}`)
      .then((data) => {
        console.log('Success:', data);
        setJenis(rows.filter((row) => row.id !== id));
        setTotalRows(totalRows - 1);
        MySwal.fire({
          title: 'Successfully!',
          html: 'Data deleted succesfully.',
          icon: 'success',
          timer: 1500
        });
      })
      .catch((error) => {
        console.error('Error:', error);
        MySwal.fire({
          title: 'Oops...',
          html: 'Something went wrong.',
          icon: 'error',
          timer: 2000
        });
      });
  };

  /**
   * Handle Add multiple data
   */

  const [inputs, setInputs] = useState([{ kategori_id: '', jenis: '' }]);

  const initialMultipleInputs = [
    {
      kategori_id: '',
      jenis: ''
    }
  ];

  const handleAddMultiple = () => {
    const newInput = { kategori_id: '', jenis: '' };
    setInputs([...inputs, newInput]);
  };

  const handleRemoveMultiple = (index) => {
    const newInputs = [...inputs];
    newInputs.splice(index, 1);
    setInputs(newInputs);
  };

  const handleSubmitMultiple = (event) => {
    event.preventDefault();
    setIsLoadingBtn(true);

    axios
      .post(
        `${appConfig.baseurlAPI}/jenis/multiple-store`,
        { inputs: inputs },
        {
          headers: {
            'Content-Type': 'application/json'
          }
        }
      )
      .then((response) => {
        if (response.status === 201) {
          Swal.fire({
            title: 'Success!',
            text: 'Data created successfully',
            icon: 'success',
            timer: 1500
          }).then(() => {
            setShowMultipleInsertModal(false);
            setRefetch(Math.random());
            setInputs(initialMultipleInputs);
            setIsLoadingBtn(false);
          });
        } else {
          throw new Error('Network response was not ok');
        }
      })
      .catch((error) => {
        console.error('Error:', error);
        MySwal.fire({
          title: 'Oops...',
          html: error.response.data.message,
          icon: 'error'
        });
        setIsLoadingBtn(false);
      });
  };

  return (
    <React.Fragment>
      <Row>
        <Col>
          <Card>
            <Card.Header className="d-flex justify-content-between">
              <div>
                <Card.Title as="h5">Jenis Soal</Card.Title>
                <span className="d-block m-t-5">
                  use bootstrap <code>Table</code> component
                </span>
              </div>
              <div className="d-flex justify-content-between">
                <div className="form-group" style={{ marginRight: '20px' }}>
                  {' '}
                  {/* Mengatur margin dengan inline style */}
                  <select
                    name="kategori_id_filter"
                    id="kategori_id_filter"
                    className={`form-control`}
                    value={selectedKategori}
                    onChange={handleChangeKategori}
                  >
                    <option value="">Semua Kategori</option>
                    {Array.isArray(kategori) &&
                      kategori.length &&
                      kategori.map((row, index) => (
                        <option value={row.id} key={index}>
                          {row.kategori}
                        </option>
                      ))}
                  </select>
                </div>
                <Button variant="primary" onClick={handleShowMultipleInsertModal}>
                  Add Multiple
                </Button>
              </div>
            </Card.Header>
            <Card.Body>
              <SearchEntries showing={showing} handleShow={handleShow} searchTerm={searchTerm} handleSearch={handleSearch} />
              <Table responsive hover>
                <thead>
                  <tr>
                    <th style={{ width: '5%' }}>#</th>
                    <th>Jenis</th>
                    <th style={{ width: '10%' }} className="text-center">
                      <i className="fas fa-cog"></i>
                    </th>
                  </tr>
                </thead>
                <tbody>
                  {!isLoading ? (
                    Array.isArray(rows) && rows.length ? (
                      rows.map((row, index) => (
                        <tr key={index}>
                          <td className="text-center">{(currentPage - 1) * showing + index + 1}</td>
                          <td>{row.jenis}</td>
                          <td className="text-center">
                            <button
                              onClick={() => handleEdit(row.id)}
                              className="btn btn-primary p-1"
                              data-toggle="modal"
                              data-target="#formDataModal"
                            >
                              <div className="m-1">
                                <i className="fas fa-edit"></i>
                              </div>
                            </button>
                            <button onClick={() => handleConfirmationDelete(row.id)} className="btn btn-danger p-1">
                              <div className="m-1">
                                <i className="fas fa-trash"></i>
                              </div>
                            </button>
                          </td>
                        </tr>
                      ))
                    ) : (
                      <tr>
                        <td colSpan="5" className="text-center">
                          No data available in the table
                        </td>
                      </tr>
                    )
                  ) : (
                    <tr>
                      <td colSpan="5" className="text-center">
                        <div className="d-flex justify-content-center align-items-center">
                          <svg xmlns="http://www.w3.org/2000/svg" width="2em" height="2em" viewBox="0 0 24 24">
                            <g stroke="currentColor">
                              <circle cx="12" cy="12" r="9.5" fill="none" strokeLinecap="round" strokeWidth="3">
                                <animate
                                  attributeName="stroke-dasharray"
                                  calcMode="spline"
                                  dur="1.5s"
                                  keySplines="0.42,0,0.58,1;0.42,0,0.58,1;0.42,0,0.58,1"
                                  keyTimes="0;0.475;0.95;1"
                                  repeatCount="indefinite"
                                  values="0 150;42 150;42 150;42 150"
                                />
                                <animate
                                  attributeName="stroke-dashoffset"
                                  calcMode="spline"
                                  dur="1.5s"
                                  keySplines="0.42,0,0.58,1;0.42,0,0.58,1;0.42,0,0.58,1"
                                  keyTimes="0;0.475;0.95;1"
                                  repeatCount="indefinite"
                                  values="0;-16;-59;-59"
                                />
                              </circle>
                              <animateTransform
                                attributeName="transform"
                                dur="2s"
                                repeatCount="indefinite"
                                type="rotate"
                                values="0 12 12;360 12 12"
                              />
                            </g>
                          </svg>
                          <span className="ml-2">Loading...</span>
                        </div>
                      </td>
                    </tr>
                  )}
                </tbody>
              </Table>
              {/* Pagination and showing data */}
              <Pagination
                currentPage={currentPage}
                showing={showing}
                totalRows={totalRows}
                totalPages={totalPages}
                handlePageChange={handlePageChange}
              />
              {/* Pagination and showing data */}
            </Card.Body>
            <button className="btn-modal" onClick={handleAdd}>
              <i className="feather icon-plus"></i>
            </button>
          </Card>
          {/* Other cards remain the same */}
        </Col>
      </Row>
      <Modal show={showMultipleInsertModal} onHide={handleCloseMultipleInsertModal} backdrop="static">
        <Modal.Header closeButton>
          <Modal.Title>{isEditing ? 'Edit Data' : 'Add Data'}</Modal.Title>
        </Modal.Header>

        <form onSubmit={handleSubmitMultiple}>
          <Modal.Body>
            <div className="table-responsive">
              <table>
                <thead>
                  <tr className="text-center">
                    <th>Kategori</th>
                    <th>Jenis</th>
                    <th width="12%">
                      <i className="fas fa-cogs"></i>
                    </th>
                  </tr>
                </thead>
                <tbody>
                  {inputs.map((input, index) => (
                    <tr key={index}>
                      <td>
                        <select
                          className="form-control"
                          value={input.kategori_id || ''}
                          onChange={(e) => {
                            const newInputs = [...inputs];
                            newInputs[index].kategori_id = e.target.value; // Perbaiki typo di sini
                            setInputs(newInputs);
                          }}
                        >
                          <option value="">-- Selected Option --</option>
                          {Array.isArray(kategori) &&
                            kategori.length &&
                            kategori.map((row) => (
                              <option value={row.id} key={row.id}>
                                {row.kategori}
                              </option>
                            ))}
                        </select>
                      </td>
                      <td>
                        <input
                          value={input.jenis}
                          className="form-control"
                          onChange={(e) => {
                            const newInputs = [...inputs];
                            newInputs[index].jenis = e.target.value;
                            setInputs(newInputs);
                          }}
                        />
                      </td>
                      <td className="text-center">
                        <button
                          type="button"
                          className="btn btn-danger p-2"
                          onClick={() => handleRemoveMultiple(index)}
                          aria-label="Remove Row"
                        >
                          <div className="m-1">
                            <i className="fas fa-trash"></i>
                          </div>
                        </button>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </Modal.Body>

          <Modal.Footer>
            <Button
              type="button"
              variant="success"
              onClick={handleAddMultiple}
              className="me-auto" // Menempatkan tombol ini di kiri
            >
              <i className="fas fa-plus-square"></i> Tambah Baris
            </Button>
            <Button type="button" variant="secondary" onClick={handleCloseMultipleInsertModal}>
              Tutup
            </Button>
            <Button type="submit" variant="primary">
              {!isLoadingBtn ? (
                'Simpan'
              ) : (
                <div className="d-flex justify-content-center">
                  <svg xmlns="http://www.w3.org/2000/svg" width="1.5em" height="1.5em" viewBox="0 0 24 24">
                    <g stroke="currentColor">
                      <circle cx="12" cy="12" r="9.5" fill="none" strokeLinecap="round" strokeWidth="3">
                        <animate
                          attributeName="stroke-dasharray"
                          calcMode="spline"
                          dur="1.5s"
                          keySplines="0.42,0,0.58,1;0.42,0,0.58,1;0.42,0,0.58,1"
                          keyTimes="0;0.475;0.95;1"
                          repeatCount="indefinite"
                          values="0 150;42 150;42 150;42 150"
                        />
                        <animate
                          attributeName="stroke-dashoffset"
                          calcMode="spline"
                          dur="1.5s"
                          keySplines="0.42,0,0.58,1;0.42,0,0.58,1;0.42,0,0.58,1"
                          keyTimes="0;0.475;0.95;1"
                          repeatCount="indefinite"
                          values="0;-16;-59;-59"
                        />
                      </circle>
                      <animateTransform
                        attributeName="transform"
                        dur="2s"
                        repeatCount="indefinite"
                        type="rotate"
                        values="0 12 12;360 12 12"
                      />
                    </g>
                  </svg>
                  <span className=""> Loading...</span>
                </div>
              )}
            </Button>
          </Modal.Footer>
        </form>
      </Modal>

      <Modal show={showModal} onHide={handleCloseModal} backdrop="static">
        <Modal.Header closeButton>
          <Modal.Title>{isEditing ? 'Edit Data' : 'Add Data'}</Modal.Title>
        </Modal.Header>

        <form onSubmit={handleSubmit} encType="multipart/form-data">
          <Modal.Body>
            <div className="row">
              <div className="form-group col-md-4">
                <label htmlFor="kategori">Kategori</label>
                <select
                  name="kategori"
                  id="kategori"
                  className={`form-control ${formErrors.kategori ? 'is-invalid' : ''}`}
                  value={formData.kategori || ''}
                  onChange={handleInputChange}
                >
                  <option value="">-- Selected Option --</option>

                  {Array.isArray(kategori) &&
                    kategori.length &&
                    kategori.map((row, index) => (
                      <option value={row.id} key={index}>
                        {row.kategori}
                      </option>
                    ))}
                </select>
                {formErrors.kategori && <div className="invalid-feedback">{formErrors.kategori}</div>}
              </div>

              <div className="form-group col-md-8">
                <label htmlFor="jenis">Jenis</label>
                <input
                  name="jenis"
                  id="jenis"
                  className={`form-control ${formErrors.jenis ? 'is-invalid' : ''}`}
                  value={formData.jenis}
                  onChange={handleInputChange}
                />
                {formErrors.jenis && <div className="invalid-feedback">{formErrors.jenis}</div>}
              </div>
            </div>
          </Modal.Body>

          <Modal.Footer>
            <Button type="button" variant="secondary" onClick={handleCloseModal}>
              Tutup
            </Button>
            <Button type="submit" variant="primary">
              {!isLoadingBtn ? (
                'Simpan'
              ) : (
                <div className="d-flex justify-content-center">
                  <svg xmlns="http://www.w3.org/2000/svg" width="1.5em" height="1.5em" viewBox="0 0 24 24">
                    <g stroke="currentColor">
                      <circle cx="12" cy="12" r="9.5" fill="none" strokeLinecap="round" strokeWidth="3">
                        <animate
                          attributeName="stroke-dasharray"
                          calcMode="spline"
                          dur="1.5s"
                          keySplines="0.42,0,0.58,1;0.42,0,0.58,1;0.42,0,0.58,1"
                          keyTimes="0;0.475;0.95;1"
                          repeatCount="indefinite"
                          values="0 150;42 150;42 150;42 150"
                        />
                        <animate
                          attributeName="stroke-dashoffset"
                          calcMode="spline"
                          dur="1.5s"
                          keySplines="0.42,0,0.58,1;0.42,0,0.58,1;0.42,0,0.58,1"
                          keyTimes="0;0.475;0.95;1"
                          repeatCount="indefinite"
                          values="0;-16;-59;-59"
                        />
                      </circle>
                      <animateTransform
                        attributeName="transform"
                        dur="2s"
                        repeatCount="indefinite"
                        type="rotate"
                        values="0 12 12;360 12 12"
                      />
                    </g>
                  </svg>
                  <span className=""> Loading...</span>
                </div>
              )}
            </Button>
          </Modal.Footer>
        </form>
      </Modal>
    </React.Fragment>
  );
};

export default Jenis;
