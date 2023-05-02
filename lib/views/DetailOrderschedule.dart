import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailOrderScheduleScreen extends StatelessWidget {
  final data;
  const DetailOrderScheduleScreen({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String dateNow =
        '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4E37A9),
        toolbarHeight: 60,
        title: Text('Order Detail'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 243, 243),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(data.profilDokter),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              '${data.nameDokter}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          Container(
                            child: Text('${data.spesialisDokter}'),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: Text(
                                  'Status',
                                  style: TextStyle(fontSize: 12),
                                )),
                                Container(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(checkStatus(data.status)),
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        primary: data.status == 0
                                            ? Color(0xcce5383b)
                                            : data.status == 1
                                                ? Color(0xcc52b788)
                                                : Color(0xccf77f00)),
                                    // primary: Color(0xCC74c69d)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 243, 243),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                      'Detail',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(color: Colors.black),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text('Order ID'),
                                  ),
                                  Container(
                                    child: Text('${data.id}'),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text('Name'),
                                  ),
                                  Container(
                                    child: Text('${data.namePasien}'),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text('Age'),
                                  ),
                                  Container(
                                    child: Text('${data.agePasien}'),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text('Appointment'),
                                  ),
                                  Container(
                                    child: Text('${data.appointment}'),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text('Order Date'),
                                  ),
                                  Container(
                                    child: Text('blm ada'),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text('Treatment Date'),
                                  ),
                                  Container(
                                    child: Text('${data.date}'),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text('Treatment Tine'),
                                  ),
                                  Container(
                                    child: Text('${data.time}'),
                                  ),
                                ],
                              ),
                            ),
                            Divider(color: Colors.black),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                      'Total Price',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Rp ${data.priceDokter}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))
                      ],
                    )),
                SizedBox(
                  height: 15,
                ),
                Container(
                    child: data.status == 2
                        ? Row(children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Cancel'),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    primary: Color(0xcce5383b)),
                              ),
                            )
                          ])
                        : null)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String checkStatus(int value) {
  if (value == 0) {
    return 'Cancel';
  } else if (value == 1) {
    return 'Done';
  } else if (value == 2) {
    return 'Pending';
  } else {
    return 'Unknown status';
  }
}
