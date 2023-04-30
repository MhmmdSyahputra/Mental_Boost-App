import 'package:flutter/material.dart';
import 'package:mentalboost/views/DetailDokter.dart';

class WidgetDokter extends StatefulWidget {
  final data;
  const WidgetDokter({super.key, required this.data});

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
                profil: widget.data['fotoProfile'],
                name: widget.data['namaDokter'],
                price: widget.data['price'],
                biografi: widget.data['biografi'],
                spesialis: widget.data['spesialis'],
                manyPasien: widget.data['manyPasien'],
                color: widget.data['color'],
                pengalaman: widget.data['pengalaman'],
                review: widget.data['review'])));
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
                    image: AssetImage(widget.data['fotoProfile']),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data['namaDokter'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      widget.data['status'] ? "● Online" : "Offline",
                      style: TextStyle(
                        color:
                            widget.data['status'] ? Colors.green : Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "RP ${widget.data['price']}",
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
                            profil: widget.data['fotoProfile'],
                            name: widget.data['namaDokter'],
                            price: widget.data['price'],
                            biografi: widget.data['biografi'],
                            spesialis: widget.data['spesialis'],
                            manyPasien: widget.data['manyPasien'],
                            color: widget.data['color'],
                            pengalaman: widget.data['pengalaman'],
                            review: widget.data['review'])));
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
