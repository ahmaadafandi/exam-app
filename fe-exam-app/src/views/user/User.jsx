// import AddButton from 'components/Card/AddButton';
import Pagination from 'components/Table/Pagination';
import SearchEntries from 'components/Table/SearchEntries';
import React, { useCallback, useEffect, useState } from 'react';
import Swal from 'sweetalert2';
import withReactContent from 'sweetalert2-react-content';
import axios from 'axios';
import { debounce } from 'lodash';
import { useNavigate } from 'react-router-dom';
import { Row, Col, Card, Table, Modal, Button } from 'react-bootstrap';
import appConfig from 'config/appConfig';
import InputValidation from 'components/Form/InputValidation';
import { getBackgroundColor } from 'config/colorUtils';
// import ModalFooter from 'components/Form/ModalFooter';
// import ModalHeader from 'components/Form/ModalHeader';

const User = () => {
  const navigate = useNavigate();

  const [rows, setUser] = useState([]);
  const [role, setRole] = useState('');
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

  useEffect(() => {
    // Ambil role dari localStorage
    const storedRole = localStorage.getItem('role');

    // Cek role dan navigasi jika perlu
    if (storedRole !== 'administrator') {
      navigate('/app/dashboard/default');
      return; // Stop eksekusi lebih lanjut jika tidak memiliki akses
    }

    axios
      .get(`${appConfig.baseurlAPI}/users?page=${currentPage}&per_page=${showing}&search=${searchTerm}&showing=${showing}`)
      .then((data) => {
        console.log(data.data);
        setUser(data.data.data.data);
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

  /**
   * Initial form, reset input fields, and validate the form
   */

  const [formData, setFormData] = useState({
    name: '',
    email: '',
    password: '',
    role: '',
    avatar: null
  });

  const initialFormData = {
    name: '',
    email: '',
    password: '',
    role: '',
    avatar: null
  };

  const [formErrors, setFormErrors] = useState({
    name: '',
    email: '',
    password: '',
    role: '',
    avatar: null
  });

  const validateForm = () => {
    let errors = {};
    let formIsValid = true;

    // Validate input name
    if (!formData.name) {
      formIsValid = false;
      errors.name = 'name is required';
    }

    if (!formData.email) {
      formIsValid = false;
      errors.email = 'email is required';
    }

    if (!formData.role) {
      formIsValid = false;
      errors.role = 'role is required';
    }

    if (formIsValid == false) {
      setIsLoadingBtn(false);
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
    setSearchTerm(value);
    handleSearchDebounced(value);
  };

  const handleShow = (event) => {
    setShowing(parseInt(event.target.value));
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

  const handleEdit = async (id) => {
    try {
      const response = await axios.get(`${appConfig.baseurlAPI}/users/${id}`);
      const userData = response.data;

      const data = rows.find((row) => row.id === id);

      setRole(userData.role);

      setFormData({
        name: data.name,
        email: data.email,
        password: '',
        role: userData.role,
        avatar: null
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

  const handleInputChange = (event) => {
    const { name, value } = event.target;
    setFormData({ ...formData, [name]: value });

    setFormErrors((prevErrors) => ({
      ...prevErrors,
      [name]: ''
    }));
  };

  const handleFileChange = (event) => {
    setFormData({ ...formData, avatar: event.target.files[0] });
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    setIsLoadingBtn(true);

    if (!isEditing) {
      if (validateForm()) {
        axios
          .post(`${appConfig.baseurlAPI}/users`, formData, {
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
        data.append('name', formData.name);
        data.append('email', formData.email);
        data.append('password', formData.password);
        data.append('role', formData.role);
        data.append('avatar', formData.avatar);
        data.append('_method', 'put');
        axios
          .post(`${appConfig.baseurlAPI}/users/${modalData.id}`, data, {
            headers: {
              'Content-Type': 'multipart/form-data'
            }
          })
          .then((response) => {
            if (response.status === 200) {
              Swal.fire({
                title: 'Success!',
                text: response.data.message,
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
      .delete(`${appConfig.baseurlAPI}/users/${id}`)
      .then((data) => {
        console.log('Success:', data);
        setUser(rows.filter((row) => row.id !== id));
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

  return (
    <React.Fragment>
      <Row>
        <Col>
          <Card>
            <Card.Header>
              <Card.Title as="h5">User Manajemen</Card.Title>
              <span className="d-block m-t-5">
                Pengolahan data <code>User</code> pada tabel
              </span>
            </Card.Header>
            <Card.Body>
              <SearchEntries showing={showing} handleShow={handleShow} searchTerm={searchTerm} handleSearch={handleSearch} />
              <Table responsive hover>
                <thead>
                  <tr>
                    <th style={{ width: '5%' }}>#</th>
                    <th style={{ width: '10%' }}>Avatar</th>
                    <th>Nama</th>
                    <th>Email</th>
                    <th className="text-center">
                      <i className="fas fa-cog"></i>
                    </th>
                  </tr>
                </thead>
                <tbody>
                  {!isLoading ? (
                    Array.isArray(rows) && rows.length ? (
                      rows.map((row, index) => (
                        <tr key={index}>
                          <td className="text-center">{index + 1}</td>
                          <td>
                            {row.avatar ? (
                              <a
                                href={
                                  row.avatar
                                    ? appConfig.baseURL + '/storage/images/' + row.avatar
                                    : appConfig.baseURL + '/storage/images/user_icon.png'
                                }
                                target="_blank"
                                rel="noopener noreferrer"
                              >
                                <img
                                  className="settings-icon"
                                  src={
                                    row.avatar
                                      ? appConfig.baseURL + '/storage/images/' + row.avatar
                                      : appConfig.baseURL + '/storage/images/user_icon.png'
                                  }
                                  alt={row.name}
                                />
                              </a>
                            ) : (
                              <div
                                className="user-icon"
                                style={{
                                  backgroundColor: getBackgroundColor(row.name)
                                }}
                              >
                                {row.name.charAt(0).toUpperCase()}
                              </div>
                            )}
                          </td>
                          <td>{row.name}</td>
                          <td>{row.email}</td>
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
        </Col>
      </Row>
      <Modal show={showModal} onHide={handleCloseModal} backdrop="static">
        <Modal.Header closeButton>
          <Modal.Title>{isEditing ? 'Edit Data' : 'Add Data'}</Modal.Title>
        </Modal.Header>

        <form onSubmit={handleSubmit} encType="multipart/form-data">
          <Modal.Body>
            <div className="form-group">
              <label htmlFor="avatar">Avatar</label>
              <input type="file" name="avatar" id="avatar" className="form-control" onChange={handleFileChange} />
            </div>
            <InputValidation
              label="Name"
              name="name"
              type="text"
              className={`form-control ${formErrors.name ? 'is-invalid' : ''}`}
              value={formData.name}
              onChange={handleInputChange}
              error={formErrors.name}
            />
            {formErrors.name && <div className="invalid-feedback">{formErrors.name}</div>}
            <InputValidation
              label="Email"
              name="email"
              type="email"
              className={`form-control ${formErrors.email ? 'is-invalid' : ''}`}
              value={formData.email}
              onChange={handleInputChange}
              error={formErrors.email}
            />
            {formErrors.email && <div className="invalid-feedback">{formErrors.email}</div>}
            <InputValidation
              label="Password"
              name="password"
              type="password"
              className={`form-control ${formErrors.password ? 'is-invalid' : ''}`}
              value={formData.password || ''}
              onChange={handleInputChange}
              error={formErrors.password}
            />
            {formErrors.password && <div className="invalid-feedback">{formErrors.password}</div>}
            <div className="form-group">
              <label htmlFor="role">Role user</label>
              <select
                name="role"
                id="role"
                className={`form-control ${formErrors.role ? 'is-invalid' : ''}`}
                value={formData.role || ''}
                onChange={handleInputChange}
              >
                <option value="">-- Selected Option --</option>
                <option value="user">User</option>
                <option value="administrator">Administrator</option>
              </select>
              {formErrors.role && <div className="invalid-feedback">{formErrors.role}</div>}
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
      {/* {showModal && (
        <div
          className="modal fade show d-block"
          id="formDataModal"
          aria-labelledby="formDataModalLabel"
          aria-hidden="true"
          style={{ background: 'rgba(0,0,0,0.5)' }}
        >
          <div className="modal-dialog">
            <div className="modal-content">
              <div className="modal-header">
                <h5 className="modal-title" id="formDataModalLabel">
                  {isEditing ? 'Edit Data' : 'Add Data'}
                </h5>
                <button type="button" className="close" data-dismiss="modal" aria-label="Close" onClick={handleClose}>
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <form onSubmit={handleSubmit} encType="multipart/form-data">
                <div className="modal-body">
                  <div className="form-group">
                    <label htmlFor="avatar">Avatar</label>
                    <input type="file" name="avatar" id="avatar" className="form-control" onChange={handleFileChange} />
                  </div>
                  <InputValidation
                    label="Name"
                    name="name"
                    type="text"
                    value={formData.name}
                    onChange={handleInputChange}
                    error={formErrors.name}
                  />
                  <InputValidation
                    label="Email"
                    name="email"
                    type="email"
                    value={formData.email}
                    onChange={handleInputChange}
                    error={formErrors.email}
                  />

                  <InputValidation
                    label="Password"
                    name="password"
                    type="password"
                    value={formData.password || ''}
                    onChange={handleInputChange}
                    error={formErrors.password}
                  />

                  <div className="form-group">
                    <label htmlFor="role">Role user</label>
                    <select
                      name="role"
                      id="role"
                      className={`form-control ${formErrors.role ? 'is-invalid' : ''}`}
                      value={formData.role || ''}
                      onChange={handleInputChange}
                    >
                      <option value="">-- Selected Option --</option>
                      <option value="user">User</option>
                      <option value="administrator">Administrator</option>
                    </select>
                    {formErrors.role && <div className="invalid-feedback">{formErrors.role}</div>}
                  </div>
                </div>
                <div className="modal-footer">
                  <button type="button" className="btn btn-secondary tw-bg-gray-300" data-dismiss="modal" onClick={handleClose}>
                    Close
                  </button>
                  <button type="submit" className="btn btn-primary tw-bg-blue-500">
                    Save Data
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      )} */}
    </React.Fragment>
  );
};

export default User;
