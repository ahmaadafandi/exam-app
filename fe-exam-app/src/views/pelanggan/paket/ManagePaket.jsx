import axios from 'axios';
import appConfig from 'config/appConfig';
import React, { useEffect, useState } from 'react';
import { Row, Col, Card } from 'react-bootstrap';
import { FaQuestionCircle, FaClock } from 'react-icons/fa';
import { useNavigate, useParams } from 'react-router-dom';

const BootstrapTable = () => {
  const [loading, setLoading] = useState(true);
  const [paket, setPaket] = useState([]);
  const navigate = useNavigate();
  const { id } = useParams(); // Ambil id dari route parameter

  const totalQuestions = 10;
  const initialAnswers = Array(totalQuestions).fill('');

  useEffect(() => {
    axios
      .get(`${appConfig.baseurlAPI}/paket/${id}`)
      .then((response) => {
        setPaket(response.data.data);
        setLoading(false);
        console.log(response.data.data);
      })
      .catch((error) => {
        console.error('There was an error fetching the post data!', error);
      });
  }, [setPaket]);

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
    localStorage.setItem('jlh_soal', paket.jlh_soal);
    localStorage.setItem('waktu', paket.waktu * 60);

    navigate(`/pelanggan/ujian/${id}`, { state: { id } });
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
            <Col md={4} className="mb-4">
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
                    <b>{paket.paket}</b>
                  </Card.Title>
                  <small className="d-block mt-1 text-white">Pastikan Anda siap sebelum memulai</small>
                </Card.Header>
                <Card.Body className="p-4">
                  <div className="d-flex justify-content-between align-items-center mb-4">
                    <div className="d-flex align-items-center">
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
                  <button className="btn btn-primary w-100" style={{ borderRadius: '8px' }} onClick={() => handleUjian(paket.id)}>
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
        </Row>
      )}
    </React.Fragment>
  );
};

export default BootstrapTable;
