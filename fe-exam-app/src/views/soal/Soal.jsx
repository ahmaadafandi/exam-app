import React, { useCallback, useEffect, useState } from 'react';
import { Row, Col, Card, Table } from 'react-bootstrap';
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

  useEffect(() => {
    axios
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

  const handleEdit = async (id) => {
    navigate(`/soal-manage/edit/${id}`, { state: { id } });
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

  return (
    <React.Fragment>
      <Row>
        <Col>
          <Card>
            <Card.Header>
              <Card.Title as="h5">Data Soal</Card.Title>
              <span className="d-block m-t-5">
                use props <code>hover</code> with <code>Table</code> component
              </span>
            </Card.Header>
            <Card.Body>
              <div className="row">
                <div className="col-md-4 form-group mb-3">
                  <label>Paket Try Out</label>
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
                <div className="col-md-4 form-group mb-3">
                  <label>Jenis</label>
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
              <br />
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
    </React.Fragment>
  );
};

export default Soal;
