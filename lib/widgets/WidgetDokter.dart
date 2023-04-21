import 'package:flutter/material.dart';
import 'package:mentalboost/views/DetailDokter.dart';

class WidgetDokter extends StatefulWidget {
  final String fotoProfile;
  final String namaDokter;
  final bool status;
  final String harga;
  const WidgetDokter({
    super.key,
    required this.fotoProfile,
    required this.namaDokter,
    required this.status,
    required this.harga,
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
                biografi: 'biografi',
                spesialis: 'Psikologi',
                manyPasien: '3000',
                pengalaman: '6',
                review: '3013')));
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
                      "RP ${widget.harga}",
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
                            biografi: 'biografi',
                            spesialis: 'Psikologi',
                            manyPasien: '3000',
                            pengalaman: '6',
                            review: '3013')));
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
