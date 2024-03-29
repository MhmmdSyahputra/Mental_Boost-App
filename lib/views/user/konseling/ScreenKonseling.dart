import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mentalboost/utils/data.dart';
import 'package:mentalboost/widgets/Widgetkonseling.dart';

class KonselingScreen extends StatelessWidget {
  final List<String> quotes = [
    "Bicaralah dengan seseorang yang bisa dipercaya, itu adalah salah satu terapi terbaik.",
    "Saat kita tidak mampu merubah keadaan, yang bisa kita ubah hanyalah diri kita sendiri.",
    "Kesulitan yang kita alami hari ini adalah kekuatan yang akan membentuk kita menjadi lebih kuat di masa depan.",
    "Kesembuhan dimulai dengan keberanian untuk menghadapi masalah-masalah kita.",
    "Jangan pernah meremehkan kekuatan sebuah obrolan.",
    "Jika kamu ingin perubahan dalam hidupmu, ubahlah cara berpikirmu terlebih dahulu.",
    "Kebahagiaan terbesar adalah ketika kamu merasa baik-baik saja tanpa harus membuktikan apapun kepada siapa pun.",
    "Kita semua punya masalah, tetapi itu tidak berarti kita tidak punya solusi.",
    "Menerima diri sendiri adalah awal dari segala kebahagiaan.",
  ];
  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    String randomQuote = quotes[random.nextInt(quotes.length)];
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              AssetImage('assets/images/banner-konseling.png'),
                        ),
                      ),
                    ),
                    // Image.asset('assets/images/banner-konseling.png'),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 20, left: 5, right: 5),
                          child: Text(
                            randomQuote,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(children: [
                    Expanded(
                        child: Row(
                      children: [
                        Text(
                          "Topik Konseling",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        )
                      ],
                    )),
                  ]),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    children: List.generate(
                        Listkonseling.length,
                        (index) => Padding(
                              padding: EdgeInsets.all(0),
                              child: Widgetkoseling(
                                data: Listkonseling[index],
                              ),
                            )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
