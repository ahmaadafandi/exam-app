// Array warna
export const colors = [
  '#FF5733',
  '#33FF57',
  '#3357FF',
  '#F333FF',
  '#FF33A1',
  '#33FFF5',
  '#7D33FF',
  '#FF8F33',
  '#FF333D',
  '#33FFA6',
  '#3385FF',
  '#FF5733',
  '#F0FF33',
  '#5A33FF',
  '#33FFDA',
  '#A1FF33',
  '#33DFFF',
  '#FF33C8',
  '#33FF74',
  '#FF335D',
  '#33FF82',
  '#B133FF',
  '#FF33BA',
  '#33CFFF',
  '#FF5733',
  '#33FFEC'
];

// Fungsi untuk mendapatkan warna berdasarkan huruf pertama
export const getBackgroundColor = (name) => {
  if (!name) return colors[0]; // Default warna jika tidak ada nama
  const firstLetter = name[0].toUpperCase();
  const asciiIndex = firstLetter.charCodeAt(0) - 65; // Menghitung posisi dalam abjad (0-25)
  return colors[asciiIndex % colors.length]; // Dapatkan warna sesuai index
};
