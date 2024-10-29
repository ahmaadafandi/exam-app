import { ConfigContext } from 'contexts/ConfigContext';
import * as actionType from 'store/actions';
import React, { useState, useEffect, useContext } from 'react';
import { Card, Col, Row } from 'react-bootstrap';
import { useNavigate, useParams } from 'react-router-dom';
import Swal from 'sweetalert2';
import withReactContent from 'sweetalert2-react-content';
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
  const [timeLeft, setTimeLeft] = useState(0);
  const [soal, setSoal] = useState([]);
  const [paket, setPaket] = useState('');

  const [isLoadingBtn, setIsLoadingBtn] = useState(false);
  const MySwal = withReactContent(Swal);

  useEffect(() => {
    setPaket(localStorage.getItem('paket'));
    // Cek jika ada data tersimpan di localStorage
    const savedTime = localStorage.getItem('timeLeft');
    const savedAnswers = localStorage.getItem('answers');
    setTotalQuestions(parseInt(localStorage.getItem('jlh_soal'), 10) || totalQuestions);

    // Jika ada, lanjutkan dari waktu tersimpan
    if (savedTime) {
      setTimeLeft(parseInt(savedTime, 10));
    }

    if (savedAnswers) {
      setAnswers(JSON.parse(savedAnswers));
    }

    // Update timer setiap detik
    const timerInterval = setInterval(() => {
      setTimeLeft((prevTime) => {
        if (prevTime <= 0) {
          submitExam();
          clearInterval(timerInterval);
        }
        // Simpan waktu saat ini ke localStorage
        localStorage.setItem('timeLeft', prevTime - 1);
        return prevTime - 1;
      });
    }, 1000);

    // Bersihkan timer saat komponen unmount
    return () => clearInterval(timerInterval);
  }, [totalQuestions]);

  // Simpan jawaban setiap kali ada perubahan
  useEffect(() => {
    localStorage.setItem('answers', JSON.stringify(answers));
  }, [answers]);

  useEffect(() => {
    // Set collapseMenu to true when the component mounts
    dispatch({ type: actionType.COLLAPSE_MENU });

    const jlh_soal = parseInt(localStorage.getItem('jlh_soal'), 10);

    axios
      .get(`${appConfig.baseurlAPI}/ujian/${id}?jlh_soal=${jlh_soal}`)
      .then((response) => {
        const fetchedSoal = response.data.data;
        setSoal(fetchedSoal);

        // Inisialisasi answers dengan jawaban kosong sesuai jumlah soal
        const initialAnswers = {};
        fetchedSoal.forEach((question) => {
          initialAnswers[`idQ${question.id}`] = ''; // Mengisi jawaban kosong untuk setiap soal
        });
        setAnswers(initialAnswers); // Set state answers dengan nilai awal kosong

        console.log(response.data.data);
      })
      .catch((error) => {
        console.error('There was an error fetching the post data!', error);
      });
  }, [dispatch, id]);

  const updateTimer = () => {
    let hour = Math.floor(timeLeft / (60 * 60));
    let minutes = Math.floor(timeLeft / 60) - hour * 60;
    let seconds = timeLeft % 60;

    if (seconds < 10) seconds = '0' + seconds;
    if (minutes < 10) minutes = '0' + minutes;
    if (hour < 10) hour = '0' + hour;

    return `${hour}:${minutes}:${seconds}`;
  };

  const showQuestion = (questionNumber) => {
    if (questionNumber >= 1 && questionNumber <= totalQuestions) {
      setCurrentQuestion(questionNumber);
    }
  };

  const handleAnswerChange = (questionId, answer) => {
    const updatedAnswers = { ...answers };
    // Format jawabannya menjadi idQ{questionId}
    updatedAnswers[`idQ${questionId}`] = answer.toUpperCase();
    // updatedAnswers[questionId] = answer.toUpperCase();
    setAnswers(updatedAnswers);
  };

  const submitExam = async () => {
    setIsLoadingBtn(true);

    // Ambil jawaban terakhir dari localStorage jika state answers kosong
    const savedAnswers = JSON.parse(localStorage.getItem('answers')) || answers;

    // Siapkan data yang akan dikirim
    const formData = new FormData();

    const paket_to_id = localStorage.getItem('paket_to_id');
    const jlh_soal = localStorage.getItem('jlh_soal');
    const waktu = localStorage.getItem('waktu');
    const timeLeftAwal = localStorage.getItem('timeLeft');

    const timeLeft = waktu - timeLeftAwal;
    let hour = Math.floor(timeLeft / (60 * 60));
    let minutes = Math.floor(timeLeft / 60) - hour * 60;
    let seconds = timeLeft % 60;

    if (seconds < 10) seconds = '0' + seconds;
    if (minutes < 10) minutes = '0' + minutes;
    if (hour < 10) hour = '0' + hour;

    const waktu_pengerjaan = `${hour}:${minutes}:${seconds}`;

    formData.append('paket_to_id', paket_to_id);
    formData.append('jlh_soal', jlh_soal);
    formData.append('waktu_pengerjaan', waktu_pengerjaan);

    // Mengonversi jawaban ke dalam bentuk {idQ1: "A", idQ2: "B", ...}
    formData.append('answers', JSON.stringify(savedAnswers));

    // Panggil API untuk menyimpan data
    try {
      const response = await axios.post(`${appConfig.baseurlAPI}/ujian`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        }
      });

      if (response.status === 201) {
        Swal.fire({
          title: 'Success!',
          text: 'Data created successfully',
          icon: 'success',
          timer: 1500
        }).then(() => {
          setIsLoadingBtn(false);
          console.log('Jawaban Pengguna:', answers);
          localStorage.removeItem('paket_to_id');
          localStorage.removeItem('jlh_soal');
          localStorage.removeItem('timeLeft');
          localStorage.removeItem('answers');
          localStorage.removeItem('waktu');
          localStorage.removeItem('paket');
          dispatch({ type: actionType.COLLAPSE_MENU });
          navigate('/selesai-ujian');
        });
      }
    } catch (error) {
      console.error('Error:', error);
      MySwal.fire({
        title: 'Oops...',
        html: 'Something went wrong.',
        icon: 'error',
        timer: 2000
      });
      setIsLoadingBtn(false);
    }
  };

  const markAnsweredStatus = () => {
    return answers.map((answer, index) => (answer === 'Tidak Dijawab' ? 'unanswered' : 'answered'));
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
    localStorage.removeItem('jlh_soal');
    localStorage.removeItem('timeLeft');
    localStorage.removeItem('answers');
    localStorage.removeItem('waktu');
    localStorage.removeItem('paket');
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
                  {['A', 'B', 'C', 'D', 'E'].map((option, index) => (
                    <div
                      key={option}
                      className={`option ${answers[`idQ${soal[currentQuestion - 1]?.id}`] === option ? 'selected' : ''}`}
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
                  ))}
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
                  <button className="btn btn-submit" onClick={submitExam}>
                    {!isLoadingBtn ? (
                      'Kirim Jawaban'
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
                  </button>
                )}
              </div>
            </div>
          </Card.Body>
        </Card>
      </Col>

      <Col className="col-md-3 col-sm-12">
        <Card className="mb-3 timer-card">
          <Card.Body>
            <b>Sisa Waktu</b>
            <div className="timer">{updateTimer()}</div>
          </Card.Body>
        </Card>
        <Card>
          <Card.Body>
            <div className="sidebar">
              <div className="sidebar-header">
                <h2>Navigasi Soal</h2>
              </div>
              <div className="question-numbers">
                {Array.from({ length: totalQuestions }, (_, index) => {
                  const questionId = soal[index]?.id; // Ambil id soal berdasarkan index, jika ada

                  return (
                    <button
                      key={questionId || index} // Gunakan questionId sebagai key, atau index jika tidak ada
                      className={`question-number ${
                        questionId && answers[`idQ${questionId}`] ? 'answered' : 'unanswered' // Mengubah warna berdasarkan status jawaban
                      } ${currentQuestion === index + 1 ? 'active' : ''}`}
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
        <div className="d-flex">
          <button className="btn btn btn-danger w-50" onClick={() => handleKembali()}>
            Batal Ujian
          </button>
          <button className="btn btn btn-success w-50" onClick={submitExam}>
            Akhiri Ujian
          </button>
        </div>
      </Col>
    </Row>
  );
};

export default ExamPage;
