import React, { useCallback, useEffect, useState } from 'react';
import { Row, Col, Card, Table, Modal, Button } from 'react-bootstrap';
import { useNavigate } from 'react-router-dom';
import withReactContent from 'sweetalert2-react-content';
import Pagination from 'components/Table/Pagination';
import SearchEntries from 'components/Table/SearchEntries';
import Swal from 'sweetalert2';
import axios from 'axios';
import { debounce } from 'lodash';
import appConfig from 'config/appConfig';

const Soal = () => {
  const navigate = useNavigate();

  const [role, setRole] = useState(null);

  const [soalId, setSoalId] = useState('');

  const [rows, setSoal] = useState([]);
  const [isLoading, setIsLoading] = useState(true);

  const [currentPage, setCurrentPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);
  const [totalRows, setTotalRows] = useState(0);

  const [searchTerm, setSearchTerm] = useState('');
  const [searchTermDebounced, setSearchTermDebounced] = useState('');
  const [showing, setShowing] = useState(10);

  const [refetch, setRefetch] = useState(Math.random());
  const MySwal = withReactContent(Swal);

  const [jenis, setJenis] = useState([]);
  const [paketTo, setPaketTo] = useState([]);
  const [selectedPaketTo, setSelectedPaketTo] = useState('');
  const [selectedJenis, setSelectedJenis] = useState('');

  const [kunciJawaban, setKunciJawaban] = useState({});

  const [isLoadingBtn, setIsLoadingBtn] = useState(false);

  const [showMultipleInsertModal, setShowMultipleInsertModal] = useState(false);

  const handleCloseMultipleInsertModal = () => setShowMultipleInsertModal(false);

  // Fungsi untuk mengambil kunci jawaban
  const fetchKunciJawaban = async (id) => {
    try {
      const response = await axios.get(`${appConfig.baseurlAPI}/soal/${id}/kunci-jawaban`);
      setKunciJawaban((prev) => ({
        ...prev,
        [id]: Array.isArray(response.data) ? response.data : [] // Simpan kunci jawaban berdasarkan soal_id
      }));
    } catch (error) {
      console.error('Error fetching kunci jawaban:', error);
    }
  };

  useEffect(() => {
    // Ambil role dari localStorage
    const storedRole = localStorage.getItem('role');
    setRole(storedRole);

    // Cek role dan navigasi jika perlu
    if (storedRole !== 'administrator') {
      navigate('/app/dashboard/default');
      return; // Stop eksekusi lebih lanjut jika tidak memiliki akses
    }

    console.log(storedRole);

    // Jika role adalah administrator, ambil data soal
    const fetchSoalData = async () => {
      const data = await axios
        .get(
          `${appConfig.baseurlAPI}/soal?page=${currentPage}&per_page=${showing}&search=${searchTerm}&showing=${showing}&jenis_id=${selectedJenis}&paket_to_id=${selectedPaketTo}`
        )
        .then((data) => {
          console.log(data.data);
          setSoal(data.data.data.data);
          setPaketTo(data.data.paket_to);
          setJenis(data.data.jenis);
          setTotalPages(data.data.data.last_page);
          setTotalRows(data.data.data.total);
          setIsLoading(false);

          // Ambil kunci jawaban untuk setiap soal
          data.data.data.data.forEach((soal) => fetchKunciJawaban(soal.id));
        })
        .catch((error) => {
          if (error.response.status === 403) {
            navigate('/403');
          } else {
            console.log(error);
          }
          setIsLoading(false);
        });
    };

    fetchSoalData();
  }, [currentPage, showing, searchTermDebounced, refetch]);

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

  //   hadle request

  const handleAdd = () => {
    navigate('/soal-manage');
  };

  const handleChangePaket = (event) => {
    setIsLoading(true);
    const paket_to_id = event.target.value;
    setSelectedPaketTo(paket_to_id);
    console.log(paket_to_id);
    axios
      .get(
        `${appConfig.baseurlAPI}/soal?page=${currentPage}&per_page=${showing}&search=${searchTerm}&showing=${showing}&paket_to_id=${paket_to_id}&jenis_id=${selectedJenis}`
      )
      .then((data) => {
        console.log(data.data);
        setSoal(data.data.data.data);
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
  };

  const handleChangeJenis = (event) => {
    setIsLoading(true);
    const jenis_id = event.target.value;
    setSelectedJenis(jenis_id);
    console.log(jenis_id);
    axios
      .get(
        `${appConfig.baseurlAPI}/soal?page=${currentPage}&per_page=${showing}&search=${searchTerm}&showing=${showing}&jenis_id=${jenis_id}&paket_to_id=${selectedPaketTo}`
      )
      .then((data) => {
        console.log(data.data);
        setSoal(data.data.data.data);
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
  };

  const handleEdit = (id) => {
    navigate(`/soal-manage/edit/${id}`, { state: { id } });
  };

  const handleEditJawaban = (id) => {
    // navigate(`/soal-manage/edit/${id}`, { state: { id } });
    setInputs(initialMultipleInputs);
    setShowMultipleInsertModal(true);
    setSoalId(id);
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
      .delete(`${appConfig.baseurlAPI}/soal/${id}`)
      .then((data) => {
        console.log('Success:', data);
        setSoal(rows.filter((row) => row.id !== id));
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

  //   hapus kunci jawaban

  const handleConfirmationDeleteKunciJawaban = (id, soalId) => {
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
        handleDeleteKunciJawaban(id, soalId);
      }
    });
  };

  const handleDeleteKunciJawaban = (id, soalId) => {
    axios
      .delete(`${appConfig.baseurlAPI}/soal/kunci-jawaban/${id}`)
      .then((data) => {
        console.log('Success:', data);
        // Buat salinan kunciJawaban untuk soal terkait
        const updatedKunciJawaban = kunciJawaban[soalId].filter((kunci) => kunci.id !== id);

        // Update state kunciJawaban dengan array yang sudah diperbarui
        setKunciJawaban((prev) => ({
          ...prev,
          [soalId]: updatedKunciJawaban
        }));
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

  const [inputs, setInputs] = useState([{ jawaban: '', nilai: '' }]);

  const initialMultipleInputs = [
    {
      jawaban: '',
      nilai: ''
    }
  ];

  const handleAddMultiple = () => {
    const newInput = { jawaban: '', nilai: '' };
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
        `${appConfig.baseurlAPI}/soal/jawaban/multiple-store`,
        { inputs: inputs, soal_id: soalId },
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
            <Card.Header className="d-flex justify-content-between flex-column flex-md-row">
              <div className="mb-3 mb-md-0">
                <Card.Title as="h5">Data Soal</Card.Title>
                <span className="d-block m-t-5">
                  Daftar <code>seluruh soal</code> pada <code>Database</code>
                </span>
              </div>
              <div className="d-flex flex-column flex-md-row">
                <div className="form-group mb-2 mb-md-0 me-md-3">
                  <select
                    name="paket_to_id"
                    id="paket_to_id"
                    className={`form-control`}
                    value={selectedPaketTo}
                    onChange={handleChangePaket}
                  >
                    <option value="">Semua Paket</option>

                    {Array.isArray(paketTo) &&
                      paketTo.length &&
                      paketTo.map((row, index) => (
                        <option value={row.id} key={index}>
                          {row.paket}
                        </option>
                      ))}
                  </select>
                </div>
                <div className="form-group mb-2 mb-md-0 me-md-3">
                  {' '}
                  {/* Mengatur margin dengan inline style */}
                  <select
                    name="kategori_id_filter"
                    id="kategori_id_filter"
                    className={`form-control`}
                    // value={selectedKategori}
                    // onChange={handleChangeKategori}
                  >
                    <option value="">Semua Kategori</option>
                    {/* {Array.isArray(kategori) &&
                      kategori.length &&
                      kategori.map((row, index) => (
                        <option value={row.id} key={index}>
                          {row.kategori}
                        </option>
                      ))} */}
                  </select>
                </div>
                <div className="form-group">
                  <select name="jenis_id" id="jenis_id" className={`form-control`} value={selectedJenis} onChange={handleChangeJenis}>
                    <option value="">Semua Jenis</option>

                    {Array.isArray(jenis) &&
                      jenis.length &&
                      jenis.map((row, index) => (
                        <option value={row.id} key={index}>
                          {row.kategori} - {row.jenis}
                        </option>
                      ))}
                  </select>
                </div>
              </div>
            </Card.Header>
            <Card.Body>
              <SearchEntries showing={showing} handleShow={handleShow} searchTerm={searchTerm} handleSearch={handleSearch} />
              <Table responsive hover>
                <thead>
                  <tr>
                    <th style={{ width: '5%' }}>#</th>
                    <th style={{ width: '85%' }}>Soal</th>
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
                          <td className="text-center">{(currentPage - 1) * showing + index + 1}</td>
                          {/* <td>
                            <a href={appConfig.baseURL + '/storage/images/' + row.avatar} target="_blank" rel="noopener noreferrer">
                              <img
                                className="tw-aspect-square tw-w-4/6 tw-rounded-lg"
                                src={appConfig.baseURL + '/storage/images/' + row.avatar}
                                alt={row.name}
                                width="50"
                              />
                            </a>
                          </td> */}
                          <td>
                            <div
                              style={{ wordBreak: 'break-word', whiteSpace: 'normal', overflowWrap: 'break-word' }}
                              dangerouslySetInnerHTML={{ __html: row.soal }}
                            ></div>
                            <ol type="A" style={{ wordBreak: 'break-word', whiteSpace: 'normal', overflowWrap: 'break-word' }}>
                              <li dangerouslySetInnerHTML={{ __html: row.pilihan1 }}></li>
                              <li dangerouslySetInnerHTML={{ __html: row.pilihan2 }}></li>
                              <li dangerouslySetInnerHTML={{ __html: row.pilihan3 }}></li>
                              <li dangerouslySetInnerHTML={{ __html: row.pilihan4 }}></li>
                              <li dangerouslySetInnerHTML={{ __html: row.pilihan5 }}></li>
                            </ol>
                            <div className="d-flex align-items-center">
                              <p className="mb-0">Kunci Jawaban : </p>
                              {kunciJawaban[row.id] ? (
                                <p className="mb-0">
                                  {kunciJawaban[row.id].map((kunci, i) => (
                                    <button
                                      key={i}
                                      className="btn btn-success p-1 mb-0 position-relative"
                                      onClick={() => handleConfirmationDeleteKunciJawaban(kunci.id, row.id)}
                                    >
                                      {kunci.jawaban} {'('} {kunci.nilai} {')'}{' '}
                                      <i className="fas fa-times position-absolute end-0 me-1 icon-kunci-jawaban"></i>
                                    </button>
                                  ))}
                                </p>
                              ) : (
                                <span></span>
                              )}
                              <button
                                onClick={() => handleEditJawaban(row.id)}
                                className="btn btn-primary p-1 mb-0"
                                data-toggle="modal"
                                data-target="#formDataModalJawaban"
                              >
                                <div className="m-1" style={{ fontSize: '8px' }}>
                                  <i className="fas fa-edit"></i>
                                </div>
                              </button>
                            </div>
                          </td>
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
      <Modal show={showMultipleInsertModal} onHide={handleCloseMultipleInsertModal} backdrop="static">
        <Modal.Header closeButton>
          <Modal.Title>Kelola Data</Modal.Title>
        </Modal.Header>

        <form onSubmit={handleSubmitMultiple}>
          <Modal.Body>
            <div className="table-responsive">
              <table>
                <thead>
                  <tr className="text-center">
                    <th>Jawaban</th>
                    <th>nilai</th>
                    <th width="12%">
                      <i className="fas fa-cogs"></i>
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr style={{ display: 'none' }}>
                    <td>
                      {' '}
                      <input type="text" name="soal_id" id="soal_id" value={soalId} readOnly />
                    </td>
                  </tr>
                  {inputs.map((input, index) => (
                    <tr key={index}>
                      <td>
                        <input
                          value={input.jawaban}
                          className="form-control"
                          onChange={(e) => {
                            const value = e.target.value.toUpperCase(); // Ubah ke huruf besar
                            if (['A', 'B', 'C', 'D', 'E'].includes(value) || value === '') {
                              const newInputs = [...inputs];
                              newInputs[index].jawaban = value;
                              setInputs(newInputs);
                            }
                          }}
                        />
                      </td>
                      <td>
                        <input
                          value={input.nilai}
                          className="form-control"
                          onChange={(e) => {
                            const value = e.target.value;
                            if (['1', '2', '3', '4', '5'].includes(value) || value === '') {
                              const newInputs = [...inputs];
                              newInputs[index].nilai = value;
                              setInputs(newInputs);
                            }
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
    </React.Fragment>
  );
};

export default Soal;
