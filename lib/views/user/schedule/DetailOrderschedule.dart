import 'package:flutter/material.dart';
import 'package:mentalboost/model/ScheduleModel.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/utils/MyGlobalFunction.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/utils/data.dart';
import 'package:provider/provider.dart';

class DetailOrderScheduleScreen extends StatelessWidget {
  final data;
  const DetailOrderScheduleScreen({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String dateNow =
        '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';

    final provSchedule = Provider.of<ScheduleProvider>(context);

    final dataDokter =
        Listdokter.firstWhere((user) => user['id'] == data.idDokter);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
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
                      color: ColorConstants.boxColor,
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
                            image: AssetImage(dataDokter['fotoProfile']),
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
                              '${dataDokter['namaDokter']}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          Container(
                            child: Text('${dataDokter['spesialis']}'),
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
                                    child: Text(
                                      checkStatusSchedule(data.status),
                                      style: TextStyle(
                                          color: ColorConstants.textColorDark),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        primary: getColorStatusSchedule(
                                            data.status)),
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
                        color: ColorConstants.boxColor,
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      '${data.id}',
                                      style: TextStyle(
                                          fontSize: 80,
                                          fontFamily: 'barcode39'),
                                    ),
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
                                    child: Text('${data.orderDate}'),
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
                                    child: Text('Treatment Time'),
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
                                      'Rp ${dataDokter['price']}',
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
                Row(children: [
                  data.status == 0
                      ? Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              provSchedule.updateStatusSchedule(data.id, 2);
                            },
                            child: Text('Cancel'),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                primary: Color(0xcce5383b)),
                          ),
                        )
                      : Text('')
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
