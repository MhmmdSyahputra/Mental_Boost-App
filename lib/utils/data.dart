import 'package:flutter/material.dart';
import 'package:mentalboost/utils/MyGlobalFunction.dart';

List Listpopuler = [
  {
    'icon': Icon(
      Icons.gamepad_outlined,
      size: 40,
      color: Color(0xFFA800A6),
    ),
    'title': 'Quiz Game',
    'category': 'Quiz',
    'color': Color(0xCCD800A6),
    'displayCategory': true,
  },
  {
    'icon': Icon(
      Icons.sentiment_very_dissatisfied,
      size: 40,
      color: Color(0xFFFF6969),
    ),
    'title': 'Stress & Kecemasan',
    'category': 'Meditasi',
    'color': Color(0xCCFF9969),
    'displayCategory': true,
  },
  {
    'icon': Icon(
      Icons.healing,
      size: 40,
      color: Color(0xFF576CBC),
    ),
    'title': 'Kesehatan Fisik',
    'category': 'Meditasi',
    'color': Color(0xCC576CBC),
    'displayCategory': true,
  },
];

List Listdokter = [
  {
    'fotoProfile': 'assets/images/dokter/dokter-1.png',
    'namaDokter': 'Dr Tiara S.Pd',
    'spesialis': 'Psikiater',
    'manyPasien': '5230',
    'color': Color(0xcc4361ee),
    'review': '6420',
    'pengalaman': '6',
    'biografi':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores unde quasi deserunt quod ad cumque mollitia eaque vel adipisci incidunt minus perferendis sed odio, molestiae nam! Obcaecati ab ex vitae.',
    'status': randomBool(),
    'price': '40000',
  },
  {
    'fotoProfile': 'assets/images/dokter/dokter-2.png',
    'namaDokter': 'Dr. Putra, S.kom',
    'spesialis': 'Psikolog',
    'manyPasien': '6809',
    'color': Color(0xcc895737),
    'review': '10353',
    'pengalaman': '10+',
    'biografi':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores unde quasi deserunt quod ad cumque mollitia eaque vel adipisci incidunt minus perferendis sed odio, molestiae nam! Obcaecati ab ex vitae.',
    'status': randomBool(),
    'price': '100000',
  },
  {
    'fotoProfile': 'assets/images/dokter/dokter-3.png',
    'namaDokter': 'Dr. Aldi, S.kom',
    'spesialis': 'Terapis',
    'manyPasien': '5342',
    'color': Color(0xcc7400b8),
    'review': '7065',
    'pengalaman': '4+',
    'biografi':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores unde quasi deserunt quod ad cumque mollitia eaque vel adipisci incidunt minus perferendis sed odio, molestiae nam! Obcaecati ab ex vitae.',
    'status': randomBool(),
    'price': '65000',
  },
  {
    'fotoProfile': 'assets/images/dokter/dokter-4.png',
    'namaDokter': 'Dr. Filber, SI.kom',
    'spesialis': 'Konselor',
    'manyPasien': '7593',
    'color': Color(0xcc52b788),
    'review': '5095',
    'pengalaman': '7',
    'biografi':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores unde quasi deserunt quod ad cumque mollitia eaque vel adipisci incidunt minus perferendis sed odio, molestiae nam! Obcaecati ab ex vitae.',
    'status': randomBool(),
    'price': '80000',
  },
];

List Listkonseling = [
  {'color': Color(0xCCFD841F), 'title': 'Pekerjaan'},
  {'color': Color(0xCC4649FF), 'title': 'Pendidikan'},
  {'color': Color(0xCCFEF5AC), 'title': 'Masalah Hidup'},
  {'color': Color(0xCCA5F1E9), 'title': 'Keluarga'},
  {'color': Color(0xCCA66CFF), 'title': 'Pola Makan'},
  {'color': Color(0xCCF9D923), 'title': 'kecemasan'},
  {'color': Color(0xCCFF78F0), 'title': 'Hubungan'},
  {'color': Color(0xCCEB455F), 'title': 'Kecanduan'},
];

List Listartikel = [
  {
    'id': 1,
    'coverTips': 'assets/images/tips/tips-1.png',
    'titleTips': 'Menjaga Kesehatan Mental Selama Pandemi',
    'contentTips': '''
# Menjaga Kesehatan Mental Selama Pandemi
![Gambar Tips](assets/images/tips/tips-1.png)
Pandemi COVID-19 telah menghadirkan berbagai tantangan baru dalam kehidupan sehari-hari kita. Selain merugikan secara fisik, pandemi juga dapat berdampak negatif pada kesehatan mental kita. Untuk menjaga kesehatan mental selama pandemi, berikut adalah beberapa tips yang dapat membantu:

1. Tetap terhubung secara sosial: Meskipun kita harus menjaga jarak fisik, tetaplah terhubung dengan orang-orang terdekat melalui telepon, pesan teks, atau panggilan video. Menjaga interaksi sosial dapat membantu mengurangi rasa kesepian dan stres.

2. Tetap teratur dan menciptakan rutinitas: Dalam situasi yang tidak pasti seperti ini, menciptakan rutinitas harian dapat memberikan perasaan stabilitas dan kontrol. Tetapkan jadwal tidur yang konsisten, waktu untuk bekerja, beristirahat, dan beraktivitas fisik.

3. Lakukan aktivitas fisik secara teratur: Olahraga memiliki banyak manfaat bagi kesehatan mental. Meskipun gym dan tempat olahraga mungkin ditutup, Anda masih bisa berolahraga di rumah. Coba rutin melakukan latihan aerobik, yoga, atau jalan-jalan di luar rumah dengan tetap mematuhi protokol kesehatan.

4. Kelola informasi dengan bijak: Terlalu banyak terpapar informasi tentang pandemi dapat membuat stres dan cemas bertambah. Batasi waktu yang Anda habiskan untuk membaca berita, pastikan informasi yang Anda terima berasal dari sumber yang terpercaya, dan aturlah batasan bagi diri sendiri.

5. Temukan hobi atau kegiatan yang menyenangkan: Manfaatkan waktu luang Anda untuk mengeksplorasi hobi baru atau mengembangkan kegiatan yang telah lama Anda minati. Membaca, menulis, memasak, atau mendengarkan musik dapat menjadi kegiatan yang menenangkan dan membantu mengalihkan pikiran dari situasi yang sulit.

6. Jaga pola makan dan tidur yang sehat: Makan makanan bergizi dan tidur yang cukup sangat penting bagi kesehatan mental. Hindari makanan cepat saji yang kurang sehat dan usahakan untuk tidur setidaknya 7-8 jam setiap malam.

7. Jangan ragu untuk mencari bantuan: Jika Anda merasa terlalu kewalahan atau mengalami gejala-gejala yang mengganggu, jangan ragu untuk mencari bantuan profesional. Konsultasikan perasaan dan masalah Anda kepada psikolog atau konselor yang berpengalaman.

Menjaga kesehatan mental selama pandemi adalah hal yang penting. Dengan menerapkan tips di atas, Anda dapat membangun ketahanan mental dan menghadapi tantangan ini dengan lebih baik. Ingatlah bahwa Anda tidak sendirian, dan ada sumber daya dan dukungan yang tersedia untuk membantu Anda melewati masa-masa sulit ini.

''',
    'categoryTips': 'Kesehatan',
  },
  {
    'id': 2,
    'coverTips': 'assets/images/tips/tips-2.png',
    'titleTips': 'Tips Memilih Mainan Anak yang Aman dan Sehat',
    'contentTips': 'lorem ipsum',
    'categoryTips': 'Keluarga',
  },
  {
    'id': 3,
    'coverTips': 'assets/images/tips/tips-3.png',
    'titleTips': 'Tips Mengatasi Masalah Tidur atau Insomnia',
    'contentTips': 'lorem ipsum',
    'categoryTips': 'Kesehatan',
  },
  {
    'id': 4,
    'coverTips': 'assets/images/tips/tips-4.png',
    'titleTips': 'Kiat Mengatasi Stres dan Kecemasan Secara Alami',
    'contentTips': 'lorem ipsum',
    'categoryTips': 'Kesehatan',
  },
  {
    'id': 5,
    'coverTips': 'assets/images/tips/tips-5.png',
    'titleTips':
        'Pentingnya Menjaga Kesehatan Mental Keluarga dalam Keseharian',
    'contentTips': 'lorem ipsum',
    'categoryTips': 'Kesehatan',
  },
];

List Listquiz = [
  {
    'idQuiz': 1,
    'coverQuiz': 'assets/images/quiz/quiz-1.png',
    'titleQuiz': 'Quiz Bahasa',
    'descripsiQuiz': 'Kosakata, tata bahasa, dan literatur',
  },
  {
    'idQuiz': 2,
    'coverQuiz': 'assets/images/quiz/quiz-2.png',
    'titleQuiz': 'Kuiz Kepribadian',
    'descripsiQuiz': 'mempelajari tentang diri mereka sendiri',
  },
  {
    'idQuiz': 3,
    'coverQuiz': 'assets/images/quiz/quiz-3.png',
    'titleQuiz': 'Kuiz Film dan TV',
    'descripsiQuiz': 'topik seperti karakter, sutradara, dan penghargaan.',
  },
  {
    'idQuiz': 4,
    'coverQuiz': 'assets/images/quiz/quiz-4.png',
    'titleQuiz': 'Kuiz Musik',
    'descripsiQuiz': 'topik seperti artis, genre, dan sejarah musik.',
  },
  {
    'idQuiz': 5,
    'coverQuiz': 'assets/images/quiz/quiz-5.png',
    'titleQuiz': 'Kuiz Game',
    'descripsiQuiz': 'topik seperti karakter, plot, dan permainan video.',
  },
];

List Listmeditasi = [
  {
    'icon': Icon(
      Icons.nights_stay,
      size: 50,
      color: Color(0xFF82C3EC),
    ),
    'title': "Meditasi Tidur",
    'category': "Quiz",
    'color': Color(0xCC92C3EC),
    'displayCategory': false,
  },
  {
    'icon': Icon(
      Icons.weekend,
      size: 50,
      color: Color(0xFF967E76),
    ),
    'title': "Tenang Dirumah",
    'category': "Meditasi",
    'color': Color(0xCC967E76),
    'displayCategory': false,
  },
  {
    'icon': Icon(
      Icons.sentiment_very_dissatisfied,
      size: 50,
      color: Color(0xFFFF6969),
    ),
    'title': "Stress & Kecemasan",
    'category': "Meditasi",
    'color': Color(0xCCFF9969),
    'displayCategory': false,
  },
  {
    'icon': Icon(
      Icons.healing,
      size: 50,
      color: Color(0xFF576CBC),
    ),
    'title': "Kesehatan Fisik",
    'category': "Meditasi",
    'color': Color(0xCC576CBC),
    'displayCategory': false,
  },
  {
    'icon': Icon(
      Icons.nature_people,
      size: 50,
      color: Color(0xFF38E54D),
    ),
    'title': "Meditasi Pernapasan",
    'category': "Meditasi",
    'color': Color(0xCC98E54D),
    'displayCategory': false,
  },
  {
    'icon': Icon(
      Icons.brush,
      size: 50,
      color: Color(0xFF6F38C5),
    ),
    'title': "Aktivitas Kreatif",
    'category': "Meditasi",
    'color': Color(0xCC6F38C5),
    'displayCategory': false,
  },
  {
    'icon': Icon(
      Icons.favorite,
      size: 50,
      color: Color(0xFFE8A0BF),
    ),
    'title': "Meditasi Kasih Sayang",
    'category': "Meditasi",
    'color': Color(0xCCE8B5BF),
    'displayCategory': false,
  },
  {
    'icon': Icon(
      Icons.warning,
      size: 50,
      color: Color(0xCCFFF93C),
    ),
    'title': "Meditasi Darurat",
    'category': "Meditasi",
    'color': Color(0xCCFFC93C),
    'displayCategory': false,
  },
];
