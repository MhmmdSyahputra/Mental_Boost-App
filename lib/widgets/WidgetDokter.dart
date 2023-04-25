import 'package:flutter/material.dart';
import 'package:mentalboost/views/DetailDokter.dart';

class WidgetDokter extends StatefulWidget {
  final String fotoProfile;
  final String namaDokter;
  final String price;
  final String spesialis;
  final String manyPasien;
  final String pengalaman;
  final String review;
  final String biografi;
  final bool status;
  const WidgetDokter({
    super.key,
    required this.fotoProfile,
    required this.namaDokter,
    required this.price,
    required this.spesialis,
    required this.manyPasien,
    required this.pengalaman,
    required this.review,
    required this.biografi,
    required this.status,
  });

  @override
  State<WidgetDokter> createState() => _WidgetDokterState();
}

class _WidgetDokterState extends State<WidgetDokter> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailDokterScreen(
                profil: widget.fotoProfile,
                name: widget.namaDokter,
                price: widget.price,
                biografi: widget.biografi,
                spesialis: widget.spesialis,
                manyPasien: widget.manyPasien,
                pengalaman: widget.pengalaman,
                review: widget.review)));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 243, 243, 243),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.fotoProfile),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.namaDokter,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      widget.status ? "● Online" : "Offline",
                      style: TextStyle(
                        color: widget.status ? Colors.green : Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "RP ${widget.price}",
                      style: TextStyle(
                        color: Color(0xFF4E37A9),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailDokterScreen(
                            profil: widget.fotoProfile,
                            name: widget.namaDokter,
                            price: widget.price,
                            biografi: widget.biografi,
                            spesialis: widget.spesialis,
                            manyPasien: widget.manyPasien,
                            pengalaman: widget.pengalaman,
                            review: widget.review)));
                  },
                  child: Text("Lihat"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      primary: Color(0xFF4E37A9)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
