import axios from 'axios';
import appConfig from 'config/appConfig';
import React, { useEffect, useState } from 'react';
import { Row, Col, Card, Collapse, Table } from 'react-bootstrap';
import { FaQuestionCircle, FaClock } from 'react-icons/fa';
import { Link, useNavigate, useParams } from 'react-router-dom';

const BootstrapTable = () => {
  const [loading, setLoading] = useState(true);
  const [paket, setPaket] = useState([]);
  const [dataUjian, setDataUjian] = useState([]);
  const [dataPerolehan, setDataPerolehan] = useState({});
  const navigate = useNavigate();
  const [accordionKey, setAccordionKey] = useState(1);
  const [isLoading, setIsLoading] = useState(true);
  const { id } = useParams(); // Ambil id dari route parameter

  const totalQuestions = 10;
  const initialAnswers = Array(totalQuestions).fill('');

  useEffect(() => {
    const fetchPaketData = async () => {
      try {
        const response = await axios.get(`${appConfig.baseurlAPI}/paket/${id}`);
        setPaket(response.data.data);
        console.log(response.data.data);

        // Memanggil fetchPerolehanData hanya jika paket.id ada
        if (response.data.data && response.data.data.id) {
          fetchUjianData(response.data.data.id);
        }
      } catch (error) {
        console.error('There was an error fetching the paket data!', error);
      } finally {
        setLoading(false);
      }
    };

    fetchPaketData();
  }, [id]); // Mengganti dependensi ke `id`

  const fetchUjianData = async (paketId) => {
    try {
      const response = await axios.get(`${appConfig.baseurlAPI}/ujian/paket/${paketId}`);
      setDataUjian(response.data.data);
      console.log(response.data.data);
      setIsLoading(false);

      response.data.data.forEach((ujian) => {
        fetchPerolehanData(ujian.id); // Panggil fungsi dengan ujian.id
      });
    } catch (error) {
      console.error('There was an error fetching the perolehan data!', error);
    }
  };

  const fetchPerolehanData = async (ujianId) => {
    try {
      const response = await axios.get(`${appConfig.baseurlAPI}/paket/perolehan/nilai/${ujianId}`);
      // Pastikan total_nilai diubah menjadi angka
      const perolehanData = response.data.data.map((perolehan) => ({
        ...perolehan,
        total_nilai: Number(perolehan.total_nilai) // Konversi ke number
      }));

      setDataPerolehan((prevData) => ({
        ...prevData,
        [ujianId]: perolehanData
      }));
      console.log(response.data.data);
      setIsLoading(false);
    } catch (error) {
      console.error('There was an error fetching the perolehan data!', error);
    }
  };

  const calculateTotalNilai = (ujianId) => {
    if (dataPerolehan[ujianId]) {
      return dataPerolehan[ujianId].reduce((acc, current) => acc + Number(current.total_nilai), 0);
    }
    return 0;
  };

  const handleUjian = (id) => {
    const paketTo = localStorage.getItem('paket_to_id');
    const answers = localStorage.getItem('answers');
    // Jika ada id paket to, lanjutkan
    if (paketTo != paket.id) {
      if (answers) {
        localStorage.setItem('answers', JSON.stringify(initialAnswers));
      }
      localStorage.setItem('timeLeft', paket.waktu * 60);
    }

    localStorage.setItem('paket_to_id', paket.id);
    localStorage.setItem('paket', paket.paket);
    localStorage.setItem('jlh_soal', paket.jlh_soal);
    localStorage.setItem('waktu', paket.waktu * 60);

    navigate(`/pelanggan/ujian/${id}`, { state: { id } });
  };

  const handlePembahasan = (id) => {
    localStorage.setItem('paket_to_id', paket.id);
    localStorage.setItem('paket', paket.paket);

    navigate(`/pelanggan/ujian/pembahasan/${id}`, { state: { id } });
  };

  return (
    <React.Fragment>
      {loading ? (
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
              <animateTransform attributeName="transform" dur="2s" repeatCount="indefinite" type="rotate" values="0 12 12;360 12 12" />
            </g>
          </svg>
          <span className="ml-2">Loading...</span>
        </div>
      ) : (
        <Row>
          {paket && (
            <Col md={12} className="mb-4">
              <Card
                className="card-hover"
                style={{
                  borderRadius: '10px',
                  transition: 'transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out',
                  boxShadow: '0 10px 20px rgba(0, 0, 0, 0.1)'
                }}
              >
                {/* <Card.Header
                  className="bg-primary"
                  style={{
                    borderRadius: '10px 10px 0 0',
                    padding: '1.5rem',
                    background: 'linear-gradient(135deg, #007bff, #0056b3)'
                  }}
                >
                  <Card.Title as="h3" className="mb-0 text-white"></Card.Title>
                </Card.Header> */}
                <Card.Body className="p-4 d-flex justify-content-between">
                  <div>
                    <b>
                      <h4>{paket.paket}</h4>
                    </b>
                    <h6>Pastikan Anda siap sebelum memulai</h6>
                  </div>
                  <div className="d-flex justify-content-between align-items-center">
                    <div className="d-flex align-items-center" style={{ marginRight: '30px' }}>
                      <FaQuestionCircle className="text-primary me-2" size={24} />
                      <div>
                        <p className="mb-1 text-muted">Jumlah Soal</p>
                        <h6 className="mb-0">{paket.jlh_soal || '50'} Soal</h6>
                      </div>
                    </div>
                    <div className="d-flex align-items-center">
                      <FaClock className="text-danger me-2" size={24} />
                      <div>
                        <p className="mb-1 text-muted">Waktu Pengerjaan</p>
                        <h6 className="mb-0">{paket.waktu || '90'} Menit</h6>
                      </div>
                    </div>
                  </div>
                  <button className="btn btn-primary w-10" style={{ borderRadius: '8px' }} onClick={() => handleUjian(paket.id)}>
                    Mulai Ujian
                  </button>
                </Card.Body>
              </Card>
            </Col>
          )}
          <style>{`
            .card-hover {
              transition: transform 0.3s ease, box-shadow 0.3s ease;
              box-shadow: 0 10px 15px rgba(0, 0, 0, 0.1);
            }
            .card-hover:hover {
              transform: scale(1.05);
              box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15), 0 10px 20px rgba(0, 0, 0, 0.1);
            }
          `}</style>

          <Col sm={12} className="accordion">
            <h5>Riwayat Ujian</h5>
            <hr />
            {!isLoading ? (
              Array.isArray(dataUjian) && dataUjian.length ? (
                dataUjian.map((row, index) => (
                  <Card className="mt-2" key={index}>
                    <Card.Header>
                      <Card.Title as="h5">
                        <Link
                          to="#"
                          onClick={() => setAccordionKey(accordionKey !== 1 ? 1 : 0)}
                          aria-controls="accordion1"
                          aria-expanded={accordionKey === 1}
                        >
                          Ujian {row.id} {/* Menampilkan id ujian */}
                        </Link>
                      </Card.Title>
                    </Card.Header>
                    <Collapse in={accordionKey === 1}>
                      <div id="accordion1">
                        <Card.Body>
                          <Row>
                            <Col sm={8}>
                              <Table responsive hover>
                                <thead>
                                  <tr>
                                    <th style={{ width: '50%' }}>Kategori Soal</th>
                                    <th className="text-center">Jumlah Soal</th>
                                    <th className="text-center">Nilai</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  {dataPerolehan[row.id] ? (
                                    dataPerolehan[row.id].map((perolehan, index) => (
                                      <tr key={index}>
                                        <td>{perolehan.kategori}</td>
                                        <td className="text-center">{perolehan.jumlah_soal}</td>
                                        <td className="text-center">{perolehan.total_nilai}</td>
                                      </tr>
                                    ))
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
                            </Col>
                            <Col sm={4}>
                              <Card
                                className="mt-2"
                                style={{
                                  borderRadius: '10px',
                                  boxShadow: '0 10px 20px rgba(0, 0, 0, 0.1)'
                                }}
                              >
                                <Card.Body className="text-center">
                                  <h5>Perolehan Nilai</h5>
                                  <p className="nilai">{calculateTotalNilai(row.id)}</p>
                                  <div className="button-group d-flex justify-content-center">
                                    <button className="btn btn-success" onClick={() => handlePembahasan(row.id)}>
                                      Detail
                                    </button>
                                    <button className="btn btn btn-primary" onClick={() => handlePembahasan(row.id)}>
                                      Pembahasan
                                    </button>
                                  </div>
                                </Card.Body>
                              </Card>
                            </Col>
                          </Row>
                        </Card.Body>
                      </div>
                    </Collapse>
                  </Card>
                ))
              ) : (
                <div className="d-flex justify-content-center align-items-center">
                  <span className="ml-2">Tidak ada riwayat ujian</span>
                </div>
              )
            ) : (
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
            )}
          </Col>
        </Row>
      )}
    </React.Fragment>
  );
};

export default BootstrapTable;
