import axios from 'axios';
import appConfig from 'config/appConfig';
import React, { useEffect, useState } from 'react';
import { Row, Col, Card } from 'react-bootstrap';
import { FaQuestionCircle, FaClock } from 'react-icons/fa';
import { useNavigate } from 'react-router-dom';

const BootstrapTable = () => {
  const [loading, setLoading] = useState(true);
  const [paket, setPaket] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);
  const [totalRows, setTotalRows] = useState(0);
  const [searchTerm, setSearchTerm] = useState('');
  const [searchTermDebounced, setSearchTermDebounced] = useState('');
  const [showing, setShowing] = useState(10);
  const [refetch, setRefetch] = useState(Math.random());
  const navigate = useNavigate();

  useEffect(() => {
    axios
      .get(`${appConfig.baseurlAPI}/paket?page=${currentPage}&per_page=${showing}&search=${searchTermDebounced}&showing=${showing}`)
      .then((data) => {
        setPaket(data.data.data.data || []);
        setTotalPages(data.data.data.last_page);
        setTotalRows(data.data.data.total);
        setLoading(false);
      })
      .catch((error) => {
        if (error.response?.status === 403) {
          navigate('/403');
        } else {
          console.error(error);
        }
        setLoading(false);
      });
  }, [currentPage, showing, searchTermDebounced, refetch, navigate]);

  const handleOpen = (id) => {
    navigate(`/pelanggan/paket-manage/buka/${id}`, { state: { id } });
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
          {paket.length > 0 ? (
            paket.map((row, index) => (
              <Col key={index} md={4} className="mb-4">
                <Card
                  className="card-hover"
                  style={{
                    borderRadius: '10px',
                    transition: 'transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out',
                    boxShadow: '0 10px 20px rgba(0, 0, 0, 0.1)'
                  }}
                >
                  <Card.Header
                    className="bg-primary"
                    style={{
                      borderRadius: '10px 10px 0 0',
                      padding: '1.5rem',
                      background: 'linear-gradient(135deg, #007bff, #0056b3)'
                    }}
                  >
                    <Card.Title as="h3" className="mb-0 text-white">
                      <b>{row.paket}</b>
                    </Card.Title>
                    <small className="d-block mt-1 text-white">Pastikan Anda siap sebelum memulai</small>
                  </Card.Header>
                  <Card.Body className="p-4">
                    <div className="d-flex justify-content-between align-items-center mb-4">
                      <div className="d-flex align-items-center">
                        <FaQuestionCircle className="text-primary me-2" size={24} />
                        <div>
                          <p className="mb-1 text-muted">Jumlah Soal</p>
                          <h6 className="mb-0">{row.jlh_soal || '50'} Soal</h6>
                        </div>
                      </div>
                      <div className="d-flex align-items-center">
                        <FaClock className="text-danger me-2" size={24} />
                        <div>
                          <p className="mb-1 text-muted">Waktu Pengerjaan</p>
                          <h6 className="mb-0">{row.waktu || '90'} Menit</h6>
                        </div>
                      </div>
                    </div>
                    <button className="btn btn-primary w-100" style={{ borderRadius: '8px' }} onClick={() => handleOpen(row.id)}>
                      Buka Paket
                    </button>
                  </Card.Body>
                </Card>
              </Col>
            ))
          ) : (
            <p>Tidak ada paket ujian yang tersedia.</p>
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
        </Row>
      )}
    </React.Fragment>
  );
};

export default BootstrapTable;
