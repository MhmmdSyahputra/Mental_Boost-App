import 'package:flutter/material.dart';
import 'package:mentalboost/utils/Mycolor.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        toolbarHeight: 60,
        title: Text('About'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'Cara Kami Menangani Pasien untuk Kesehatan Mental',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                  'Masalah kesehatan mental semakin menjadi perhatian utama di era modern ini. Tingkat stres, kecemasan, dan depresi semakin meningkat di kalangan masyarakat. Beban hidup sehari-hari, tuntutan pekerjaan, masalah pribadi, dan tekanan sosial dapat berdampak negatif pada kesejahteraan mental seseorang. Untuk mengatasi masalah ini, penting bagi. individu untuk mendapatkan dukungan mental yang tepat dan aksesibilitas terhadap layanan kesehatan mental yang berkualitas. \n\nKami adalah tim profesional kesehatan yang berdedikasi untuk membantu pasien dengan masalah kesehatan mental. Kami memahami betapa pentingnya menangani masalah ini dengan serius dan memberikan perawatan yang sesuai dengan kebutuhan masing-masing pasien. \n\nPertama-tama, kami akan melakukan evaluasi mendalam terhadap pasien untuk memahami kondisi kesehatan mental mereka. Kami akan menggunakan metode yang terbukti efektif dalam menangani masalah kesehatan mental, seperti terapi kognitif, terapi perilaku, dan terapi kelompok.\n\nKami juga akan memberikan perawatan yang holistik, dengan mempertimbangkan faktor-faktor lingkungan, sosial, dan psikologis yang dapat memengaruhi kesehatan mental pasien. Kami akan bekerja sama dengan pasien untuk mengembangkan rencana perawatan yang disesuaikan dengan kebutuhan mereka dan membantu mereka mencapai tujuan kesehatan mental yang diinginkan. \n\nKami juga menyediakan sumber daya tambahan, seperti dukungan keluarga, obat-obatan, dan terapi alternatif, untuk membantu pasien mengatasi masalah kesehatan mental mereka. Kami memahami bahwa setiap pasien memiliki kebutuhan yang unik dan kami akan berusaha untuk memenuhi kebutuhan tersebut. \n\nKami percaya bahwa dengan memberikan perawatan yang tepat dan dukungan yang kuat, pasien dengan masalah kesehatan mental dapat pulih dan kembali ke kehidupan yang sehat dan bahagia. Jika Anda atau seseorang yang Anda kenal mengalami masalah kesehatan mental, jangan ragu untuk menghubungi kami dan mendapatkan bantuan yang Anda butuhkan.'),
              SizedBox(
                height: 50,
              ),
              Container(child: Text('V.1.3.3'))
            ],
          ),
        ),
      ),
    );
  }
}
