import 'package:flutter/material.dart';
import 'package:mentalboost/utils/MyGlobalFunction.dart';

List listAkunDokter = [
  {
    'id': '3546789086457835',
    'username': '',
    'email': 'tiara@gmail.com',
    'noHp': '085463723546',
    'password': 'tiara',
    'tipe': 'dokter'
  },
  {
    'id': '3745670987345268',
    'username': '',
    'email': 'putra@gmail.com',
    'noHp': '087874563789',
    'password': 'putra',
    'tipe': 'dokter'
  },
  {
    'id': '3546789075647893',
    'username': '',
    'email': 'aldi@gmail.com',
    'noHp': '084698123456',
    'password': 'aldi',
    'tipe': 'dokter'
  },
  {
    'id': '1234254637890746',
    'username': '',
    'email': 'filbert@gmail.com',
    'noHp': '089898564781',
    'password': 'filbert',
    'tipe': 'dokter'
  },
  {
    'id': 'ewfref343',
    'username': 'novita',
    'email': 'novita@gmail.com',
    'noHp': '083465789834',
    'password': 'novita',
    'tipe': 'user'
  },
];

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
    'id': '3546789086457835',
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
    'id': '3745670987345268',
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
    'id': '3546789075647893',
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
    'id': '1234254637890746',
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
    'contentTips': '''
# Tips Memilih Mainan Anak yang Aman dan Sehat
![Gambar Tips](assets/images/tips/tips-2.png)
Memilih mainan yang aman dan sehat untuk anak adalah penting untuk memastikan keselamatan dan kesejahteraan mereka. Berikut adalah beberapa tips yang dapatmembantu Anda memilih mainan yang tepat:

1. Baca label dan petunjuk: Pastikan untuk membaca label pada mainan dan petunjuk penggunaan yang disertakan. Perhatikan usia yang direkomendasikan, bahan yang digunakan, dan petunjuk keamanan lainnya.

2. Pilih mainan yang sesuai dengan usia anak: Setiap mainan memiliki usia yang direkomendasikan. Pilih mainan yang sesuai dengan usia anak untuk menghindari risiko cedera atau kecelakaan.

3. Perhatikan bahan yang digunakan: Pastikan mainan terbuat dari bahan yang aman dan non-toksik. Hindari mainan yang mengandung bahan berbahaya seperti timah atau ftalat.

4. Periksa keamanan mainan: Periksa apakah mainan memiliki bagian kecil yang dapat terlepas dan menjadi tersedak. Pastikan mainan tidak memiliki tepi yang tajam atau potongan yang bisa melukai anak.

5. Pastikan mainan tahan lama: Pilih mainan yang terbuat dari bahan yang kuat dan tahan lama. Hindari mainan yang mudah rusak atau pecah.

6. Pertimbangkan faktor kesehatan: Beberapa mainan dapat berkontribusi pada kesehatan anak, seperti mainan yang mendorong aktivitas fisik atau mainan edukatif. Pertimbangkan faktor kesehatan saat memilih mainan.

Dengan memperhatikan tips di atas, Anda dapat memilih mainan yang aman dan sehat untuk anak-anak Anda. Jangan lupa untuk selalu mengawasi anak saat bermain dengan mainan dan periksa secara berkala apakah ada kerusakan atau bahaya potensial pada mainan tersebut.

    ''',
    'categoryTips': 'Keluarga',
  },
  {
    'id': 3,
    'coverTips': 'assets/images/tips/tips-3.png',
    'titleTips': 'Tips Mengatasi Masalah Tidur atau Insomnia',
    'contentTips': '''
# Tips Mengatasi Masalah Tidur atau Insomnia
![Gambar Tips](assets/images/tips/tips-3.png)
Mengalami masalah tidur atau insomnia dapat berdampak buruk pada kesehatan dan kualitas hidup kita. Berikut adalah beberapa tips yang dapat membantu mengatasi masalah tidur atau insomnia:

1. Tetapkan jadwal tidur yang teratur: Cobalah untuk tidur dan bangun pada jam yang sama setiap hari, termasuk akhir pekan. Menjaga jadwal tidur yang konsisten membantu mengatur ritme tidur Anda.

2. Ciptakan lingkungan tidur yang nyaman: Pastikan tempat tidur Anda nyaman dan gelap. Gunakan bantal, selimut, dan perlengkapan tidur lainnya yang sesuai dengan preferensi Anda.

3. Hindari stimulan sebelum tidur: Hindari minum kafein atau minuman beralkohol beberapa jam sebelum tidur. Stimulan tersebut dapat mengganggu kualitas tidur Anda.

4. Buat rutinitas sebelum tidur: Ciptakan rutinitas yang menenangkan sebelum tidur, seperti mandi hangat atau membaca buku. Hindari aktivitas yang merangsang seperti menonton televisi atau menggunakan perangkat elektronik yang terang.

5. Olahraga secara teratur: Melakukan aktivitas fisik secara teratur dapat membantu meningkatkan kualitas tidur. Namun, hindari berolahraga terlalu dekat dengan waktu tidur karena dapat membuat Anda tetap terjaga.

6. Kelola stres dengan baik: Stres dapat menjadi salah satu penyebab masalah tidur. Coba praktikkan teknik relaksasi seperti meditasi, pernapasan dalam, atau yoga untuk mengurangi stres sebelum tidur.

Jika masalah tidur atau insomnia terus berlanjut dan mengganggu aktivitas sehari-hari Anda, penting untuk berkonsultasi dengan dokter atau ahli tidur untuk evaluasi lebih lanjut dan penanganan yang tepat.

    ''',
    'categoryTips': 'Kesehatan',
  },
  {
    'id': 4,
    'coverTips': 'assets/images/tips/tips-4.png',
    'titleTips': 'Kiat Mengatasi Stres dan Kecemasan Secara Alami',
    'contentTips': '''
# Kiat Mengatasi Stres dan Kecemasan Secara Alami
![Gambar Tips](assets/images/tips/tips-4.png)
Menghadapi stres dan kecemasan adalah bagian normal dari kehidupan, tetapi terlalu banyak stres dapat berdampak buruk pada kesehatan dan kesejahteraan kita. Berikut adalah beberapa kiat yang dapat membantu mengatasi stres dan kecemasan secara alami:

1. Olahraga secara teratur: Olahraga merupakan salah satu cara efektif untuk mengurangi stres. Lakukan aktivitas fisik secara teratur seperti berjalan kaki, berlari, atau yoga.

2. Praktikkan teknik relaksasi: Teknik seperti meditasi, pernapasan dalam, atau yoga dapat membantu menenangkan pikiran dan tubuh, mengurangi stres, dan meningkatkan kesejahteraan secara keseluruhan.

3. Jaga pola tidur yang sehat: Tidur yang cukup dan berkualitas adalah penting untuk mengatasi stres. Pastikan Anda mendapatkan tidur yang cukup setiap malam dan menjaga rutinitas tidur yang teratur.

4. Kelola waktu dengan baik: Aturlah waktu Anda dengan baik dan prioritaskan tugas yang penting. Mengatur waktu dengan baik dapat membantu mengurangi stres akibat jadwal yang padat.

5. Berbagi dengan orang terdekat: Berbicara dengan orang terdekat tentang stres dan kecemasan yang Anda alami dapat membantu mengurangi beban yang Anda rasakan. Dukungan sosial dapat memberikan rasa lega dan membantu mengatasi stres.

6. Jaga gaya hidup sehat: Makan makanan sehat, minum cukup air, dan hindari kebiasaan buruk seperti merokok atau mengkonsumsi alkohol secara berlebihan. Gaya hidup sehat dapat membantu menjaga keseimbangan mental dan fisik.

Selain kiat di atas, penting juga untuk mengenali tanda-tanda stres berlebih dan mencari bantuan jika diperlukan. Jika stres dan kecemasan terus mengganggu kesejahteraan Anda, konsultasikan dengan profesional kesehatan atau ahli terkait untuk bantuan lebih lanjut.

    ''',
    'categoryTips': 'Kesehatan',
  },
  {
    'id': 5,
    'coverTips': 'assets/images/tips/tips-5.png',
    'titleTips':
        'Pentingnya Menjaga Kesehatan Mental Keluarga dalam Keseharian',
    'contentTips': '''
# Pentingnya Menjaga Kesehatan Mental Keluarga dalam Keseharian
![Gambar Tips](assets/images/tips/tips-5.png)
Kesehatan mental keluarga memiliki peran yang sangat penting dalam kesejahteraan dan kebahagiaan setiap anggota keluarga. Berikut adalah beberapa hal yang dapat dilakukan untuk menjaga kesehatan mental keluarga dalam keseharian:

1. Komunikasi yang terbuka: Membuka saluran komunikasi yang baik antara anggota keluarga adalah kunci untuk menjaga kesehatan mental. Berbicaralah dengan anggota keluarga tentang perasaan, masalah, dan harapan masing-masing.

2. Luangkan waktu berkualitas bersama: Sediakan waktu khusus untuk berkumpul dan melakukan kegiatan bersama sebagai keluarga. Aktivitas seperti bermain game, makan malam bersama, atau berjalan-jalan dapat memperkuat ikatan keluarga dan mengurangi stres.

3. Dukung satu sama lain: Dukung dan hargai satu sama lain dalam keluarga. Berikan dukungan emosional dan fisik saat anggota keluarga menghadapi tantangan atau kesulitan.

4. Jadwalkan waktu istirahat: Penting untuk memberikan waktu istirahat yang cukup bagi setiap anggota keluarga. Istirahat yang cukup membantu mengurangi stres dan memulihkan energi.

5. Jaga pola makan dan tidur yang sehat: Pola makan dan tidur yang sehat berdampak langsung pada kesehatan mental. Pastikan setiap anggota keluarga mendapatkan nutrisi yang cukup dan tidur yang berkualitas.

6. Hargai keunikan masing-masing: Setiap anggota keluarga memiliki keunikan dan minat yang berbeda. Hargai keunikan tersebut dan dukung setiap individu untuk mengejar minat dan tujuan mereka.

Dengan menjaga kesehatan mental keluarga, Anda dapat menciptakan lingkungan yang harmonis, mendukung, dan bahagia. Ingatlah bahwa setiap keluarga memiliki dinamika yang berbeda, jadi temukan cara yang paling sesuai dengan kebutuhan dan nilai-nilai keluarga Anda.
    ''',
    'categoryTips': 'Kesehatan',
  }
];

List Listquiz = [
  {
    'idQuiz': 1,
    'coverQuiz': 'assets/images/quiz/quiz-1.png',
    'titleQuiz': 'Quiz Bahasa',
    'categoryQuiz': 'bahasa',
    'descripsiQuiz': 'Kosakata, tata bahasa, dan literatur',
  },
  {
    'idQuiz': 2,
    'coverQuiz': 'assets/images/quiz/quiz-2.png',
    'titleQuiz': 'Kuiz Kepribadian',
    'categoryQuiz': 'kepribadian',
    'descripsiQuiz': 'mempelajari tentang diri mereka sendiri',
  },
  {
    'idQuiz': 3,
    'coverQuiz': 'assets/images/quiz/quiz-3.png',
    'titleQuiz': 'Kuiz Film dan TV',
    'categoryQuiz': 'movie',
    'descripsiQuiz': 'topik seperti karakter, sutradara, dan penghargaan.',
  },
  {
    'idQuiz': 4,
    'coverQuiz': 'assets/images/quiz/quiz-4.png',
    'titleQuiz': 'Kuiz Musik',
    'categoryQuiz': 'music',
    'descripsiQuiz': 'topik seperti artis, genre, dan sejarah musik.',
  },
  {
    'idQuiz': 5,
    'coverQuiz': 'assets/images/quiz/quiz-5.png',
    'titleQuiz': 'Kuiz Game',
    'categoryQuiz': 'game',
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

List<Map<String, dynamic>> ListQuestion = [
  {
    'id': '1q2w3e4r5t',
    'category': 'kepribadian',
    'question':
        'Apakah kamu lebih suka menjadi pusat perhatian atau lebih suka berada di belakang layar?',
    'option': [
      ['A', 'Menjadi pusat perhatian'],
      ['B', 'Berada di belakang layar']
    ],
  },
  {
    'id': '9i8u7y6t5r',
    'category': 'kepribadian',
    'question':
        'Apakah kamu lebih suka berencana setiap langkah atau lebih suka improvisasi?',
    'option': [
      ['A', 'Berencana setiap langkah'],
      ['B', 'Improvisasi']
    ],
  },
  {
    'id': '0o9i8u7y6t',
    'category': 'kepribadian',
    'question':
        'Apakah kamu lebih suka bekerja dalam tim atau bekerja sendiri?',
    'option': [
      ['A', 'Bekerja dalam tim'],
      ['B', 'Bekerja sendiri']
    ],
  },
  {
    'id': 'p0o9i8u7y',
    'category': 'kepribadian',
    'question':
        'Apakah kamu lebih suka mengambil risiko atau lebih suka bermain aman?',
    'option': [
      ['A', 'Mengambil risiko'],
      ['B', 'Bermain aman']
    ],
  },
  {
    'id': 'a1s2d3f4g',
    'category': 'kepribadian',
    'question':
        'Apakah kamu lebih suka menghadapi konflik atau mencari jalan damai?',
    'option': [
      ['A', 'Menghadapi konflik'],
      ['B', 'Mencari jalan damai']
    ],
  },
  {
    'id': '1q2w3e4r5t',
    'category': 'movie',
    'question': 'Film mana yang menjadi favoritmu?',
    'option': [
      ['A', 'Avengers: Endgame'],
      ['B', 'The Godfather'],
      ['C', 'The Shawshank Redemption'],
      ['D', 'Pulp Fiction']
    ],
  },
  {
    'id': '9i8u7y6t5r',
    'category': 'movie',
    'question': 'Apakah kamu lebih suka film laga atau film komedi?',
    'option': [
      ['A', 'Film laga'],
      ['B', 'Film komedi']
    ],
  },
  {
    'id': '0o9i8u7y6t',
    'category': 'movie',
    'question': 'Film mana yang menurutmu paling mengharukan?',
    'option': [
      ['A', 'The Fault in Our Stars'],
      ['B', 'Hachi: A Dog\'s Tale'],
      ['C', 'Marley & Me'],
      ['D', 'Coco']
    ],
  },
  {
    'id': 'p0o9i8u7y',
    'category': 'movie',
    'question': 'Apakah kamu lebih suka film horor atau film fiksi ilmiah?',
    'option': [
      ['A', 'Film horor'],
      ['B', 'Film fiksi ilmiah']
    ],
  },
  {
    'id': 'a1s2d3f4g',
    'category': 'movie',
    'question': 'Siapa sutradara favoritmu?',
    'option': [
      ['A', 'Martin Scorsese'],
      ['B', 'Christopher Nolan'],
      ['C', 'Steven Spielberg'],
      ['D', 'Quentin Tarantino']
    ],
  },
  {
    'id': '1q2w3e4r5t',
    'category': 'music',
    'question': 'Siapa penyanyi favoritmu?',
    'option': [
      ['A', 'Taylor Swift'],
      ['B', 'Ed Sheeran'],
      ['C', 'Beyoncé'],
      ['D', 'Bruno Mars']
    ],
  },
  {
    'id': '9i8u7y6t5r',
    'category': 'music',
    'question': 'Apakah genre musik favoritmu?',
    'option': [
      ['A', 'Pop'],
      ['B', 'Rock'],
      ['C', 'R&B'],
      ['D', 'Hip-hop']
    ],
  },
  {
    'id': '0o9i8u7y6t',
    'category': 'music',
    'question':
        'Apakah kamu lebih suka konser langsung atau mendengarkan rekaman musik?',
    'option': [
      ['A', 'Konser langsung'],
      ['B', 'Mendengarkan rekaman musik']
    ],
  },
  {
    'id': 'p0o9i8u7y',
    'category': 'music',
    'question':
        'Apakah kamu lebih suka musik instrumental atau musik dengan vokal?',
    'option': [
      ['A', 'Musik instrumental'],
      ['B', 'Musik dengan vokal']
    ],
  },
  {
    'id': 'a1s2d3f4g',
    'category': 'music',
    'question': 'Siapa band favoritmu?',
    'option': [
      ['A', 'Coldplay'],
      ['B', 'Queen'],
      ['C', 'The Beatles'],
      ['D', 'Imagine Dragons']
    ],
  },
  {
    'id': '1q2w3e4r5t',
    'category': 'bahasa',
    'question': 'Bahasa asing mana yang ingin kamu pelajari?',
    'option': [
      ['A', 'Bahasa Spanyol'],
      ['B', 'Bahasa Prancis'],
      ['C', 'Bahasa Jerman'],
      ['D', 'Bahasa Mandarin']
    ],
  },
  {
    'id': '9i8u7y6t5r',
    'category': 'bahasa',
    'question': 'Apakah kamu lebih suka membaca buku atau menulis cerita?',
    'option': [
      ['A', 'Membaca buku'],
      ['B', 'Menulis cerita']
    ],
  },
  {
    'id': '0o9i8u7y6t',
    'category': 'bahasa',
    'question':
        'Apakah kamu suka menghafal kosakata baru atau berlatih percakapan?',
    'option': [
      ['A', 'Menghafal kosakata baru'],
      ['B', 'Berlatih percakapan']
    ],
  },
  {
    'id': 'p0o9i8u7y',
    'category': 'bahasa',
    'question': 'Apakah kamu pernah belajar bahasa daerah?',
    'option': [
      ['A', 'Ya'],
      ['B', 'Tidak']
    ],
  },
  {
    'id': 'a1s2d3f4g',
    'category': 'bahasa',
    'question':
        'Apakah kamu tertarik mempelajari bahasa kuno seperti Latin atau Yunani?',
    'option': [
      ['A', 'Ya'],
      ['B', 'Tidak']
    ],
  },
  {
    'id': '1q2w3e4r5t',
    'category': 'game',
    'question': 'Genre game apa yang paling kamu sukai?',
    'option': [
      ['A', 'RPG (Role-playing Game)'],
      ['B', 'FPS (First-person Shooter)'],
      ['C', 'Adventure'],
      ['D', 'Strategy']
    ],
  },
  {
    'id': '9i8u7y6t5r',
    'category': 'game',
    'question': 'Apakah kamu lebih suka bermain game konsol atau game PC?',
    'option': [
      ['A', 'Game konsol'],
      ['B', 'Game PC']
    ],
  },
  {
    'id': '0o9i8u7y6t',
    'category': 'game',
    'question':
        'Apakah kamu lebih suka bermain game secara solo atau multiplayer?',
    'option': [
      ['A', 'Bermain solo'],
      ['B', 'Bermain multiplayer']
    ],
  },
  {
    'id': 'p0o9i8u7y',
    'category': 'game',
    'question':
        'Apakah kamu lebih suka game dengan grafis realistis atau gaya visual yang unik?',
    'option': [
      ['A', 'Grafis realistis'],
      ['B', 'Gaya visual yang unik']
    ],
  },
  {
    'id': 'a1s2d3f4g',
    'category': 'game',
    'question': 'Siapa karakter game favoritmu?',
    'option': [
      ['A', 'Mario'],
      ['B', 'Master Chief'],
      ['C', 'Geralt of Rivia'],
      ['D', 'Link']
    ],
  },
];
