import { ConfigContext } from 'contexts/ConfigContext';
import * as actionType from 'store/actions';
import React, { useState, useEffect, useContext } from 'react';
import { Card, Col, Row } from 'react-bootstrap';
import { useNavigate, useParams } from 'react-router-dom';
import axios from 'axios';
import appConfig from 'config/appConfig';

const ExamPage = () => {
  const configContext = useContext(ConfigContext); // Mengambil konteks dengan benar
  const { dispatch } = configContext; // Mengambil dispatch dari konteks

  const { id } = useParams(); // Ambil id dari route parameter

  const navigate = useNavigate();

  const [totalQuestions, setTotalQuestions] = useState(10);
  //   const initialAnswers = Array(totalQuestions).fill('');
  const [currentQuestion, setCurrentQuestion] = useState(1);
  const [answers, setAnswers] = useState({});
  const [soal, setSoal] = useState([]);
  const [paket, setPaket] = useState('');

  useEffect(() => {
    // Set collapseMenu to true when the component mounts
    dispatch({ type: actionType.COLLAPSE_MENU });

    setPaket(localStorage.getItem('paket'));

    axios
      .get(`${appConfig.baseurlAPI}/ujian/pembahasan/${id}`)
      .then((response) => {
        const fetchedSoal = response.data.data;
        setSoal(fetchedSoal);
        // Mengambil jlh_soal dari total length array fetchedSoal
        const totalSoal = fetchedSoal[0]?.jlh_soal;
        setTotalQuestions(totalSoal);

        // Inisialisasi answers dari respons soal
        const initialAnswers = {};
        fetchedSoal.forEach((question) => {
          const soalId = question.soal_id;
          const jawaban = question.jawaban || ''; // Jawaban dari respons atau kosong jika belum ada
          initialAnswers[`idQ${soalId}`] = jawaban; // Membuat key dari soal_id, ex: idQ1
        });

        localStorage.setItem('answers', JSON.stringify(initialAnswers));
        setAnswers(initialAnswers); // Set state answers dengan nilai dari localStorage

        console.log(response.data.data);
      })
      .catch((error) => {
        console.error('There was an error fetching the post data!', error);
      });
  }, [dispatch, id]);

  const showQuestion = (questionNumber) => {
    if (questionNumber >= 1 && questionNumber <= totalQuestions) {
      setCurrentQuestion(questionNumber);
    }
  };

  const nextQuestion = () => {
    if (currentQuestion < totalQuestions) {
      showQuestion(currentQuestion + 1);
    }
  };

  const previousQuestion = () => {
    if (currentQuestion > 1) {
      showQuestion(currentQuestion - 1);
    }
  };

  const handleKembali = () => {
    dispatch({ type: actionType.COLLAPSE_MENU });

    const paketId = localStorage.getItem('paket_to_id');

    navigate(`/pelanggan/paket-manage/buka/${paketId}`, { state: { paketId } });
    localStorage.removeItem('paket_to_id');
    localStorage.removeItem('paket');
    localStorage.removeItem('answers');
    setAnswers({});
  };

  return (
    <Row>
      <Col className="col-md-12">
        <Card className="card-custom mb-3">
          <Card.Body>
            <div style={{ fontWeight: 'bold' }}>{paket}</div>
          </Card.Body>
        </Card>
      </Col>

      <Col className="col-md-9">
        <Card className="mb-3">
          <Card.Body>
            <div className="question-content">
              <h2>Soal {currentQuestion}</h2>
              <div dangerouslySetInnerHTML={{ __html: soal[currentQuestion - 1]?.soal }}></div>
              <div id={`question-${currentQuestion}`} className="question active">
                <form>
                  {['A', 'B', 'C', 'D', 'E'].map((option, index) => {
                    const questionId = soal[currentQuestion - 1]?.soal_id; // Ambil id soal berdasarkan index, jika ada
                    const correctAnswer = soal[currentQuestion - 1]?.kunci_jawaban;
                    const userAnswer = answers[`idQ${questionId}`];

                    // Tentukan kelas warna berdasarkan perbandingan jawaban user, kunci_jawaban, dan apakah sudah dijawab
                    let optionClass = '';

                    if (option === correctAnswer) {
                      optionClass = 'selected'; // Warna biru untuk pilihan yang benar
                    }

                    if (option === userAnswer && option !== correctAnswer) {
                      optionClass = 'wrongSelected'; // Warna merah untuk jawaban salah yang dipilih user
                    }

                    return (
                      <div
                        key={option}
                        className={`option ${optionClass}`}
                        onClick={() => handleAnswerChange(soal[currentQuestion - 1]?.id, option)} // Menangani klik di div
                      >
                        <label>
                          <input
                            type="radio"
                            name={`q${currentQuestion}`}
                            value={option}
                            onChange={() => handleAnswerChange(soal[currentQuestion - 1]?.id, option)} // Tetap menyertakan onChange untuk radio
                            checked={answers[`idQ${soal[currentQuestion - 1]?.id}`] === option}
                            style={{ display: 'none' }} // Menyembunyikan radio button asli
                          />
                          <span className="letter">{option}</span> {/* Menampilkan huruf di sini */}
                          {soal[currentQuestion - 1]?.[`pilihan${index + 1}`]}
                        </label>
                      </div>
                    );
                  })}
                </form>
              </div>
              <div className="buttons">
                {currentQuestion > 1 && (
                  <button className="btn btn-prev" onClick={previousQuestion}>
                    Sebelumnya
                  </button>
                )}
                {currentQuestion < totalQuestions ? (
                  <button className="btn btn-next" onClick={nextQuestion}>
                    Berikutnya
                  </button>
                ) : (
                  <></>
                )}
              </div>
            </div>
          </Card.Body>
        </Card>
      </Col>

      <Col className="col-md-3 col-sm-12">
        {/* <Card className="mb-3 timer-card">
          <Card.Body>
            <b>Sisa Waktu</b>
            <div className="timer">{updateTimer()}</div>
          </Card.Body>
        </Card> */}
        <Card>
          <Card.Body>
            <div className="sidebar">
              <div className="sidebar-header">
                <h2>Navigasi Soal</h2>
              </div>
              <div className="question-numbers">
                {Array.from({ length: totalQuestions }, (_, index) => {
                  const questionId = soal[index]?.soal_id; // Ambil id soal berdasarkan index, jika ada
                  const correctAnswer = soal[index]?.kunci_jawaban;
                  const userAnswer = answers[`idQ${questionId}`];

                  // Menentukan warna tombol: biru jika benar, merah jika salah, putih jika kosong
                  const buttonClass = !userAnswer
                    ? 'unanswered' // Warna putih jika belum dijawab
                    : userAnswer === correctAnswer
                      ? 'answered' // Warna biru jika jawaban benar
                      : 'wrongAnswer'; // Warna merah jika jawaban salah

                  return (
                    <button
                      key={questionId || index} // Gunakan questionId sebagai key, atau index jika tidak ada
                      className={`question-number ${buttonClass} ${currentQuestion === index + 1 ? 'active' : ''}`}
                      onClick={() => showQuestion(index + 1)}
                    >
                      {/* Menampilkan jawaban jika sudah diisi, jika tidak kosong */}
                      {questionId && answers[`idQ${questionId}`] ? (
                        <div className="answer-label">{answers[`idQ${questionId}`]}</div>
                      ) : (
                        <div className="answer-label"></div> // Tetap kosong jika belum diisi
                      )}
                      <div className="question-number-label">{index + 1}</div> {/* Nomor pertanyaan */}
                    </button>
                  );
                })}
              </div>
            </div>
          </Card.Body>
        </Card>
        <button className="btn btn btn-primary w-100" onClick={() => handleKembali()}>
          kembali
        </button>
      </Col>
    </Row>
  );
};

export default ExamPage;
