import 'dart:math';
import 'package:flutter/material.dart';

bool randomBool() {
  final random = Random();
  return random.nextInt(2) == 0;
}

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
    'color': Color(0xcc006d77),
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
    'contentTips': 'lorem ipsum',
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
