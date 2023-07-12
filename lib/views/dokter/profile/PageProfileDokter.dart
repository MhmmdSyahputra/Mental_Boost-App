import 'package:flutter/material.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/utils/data.dart';
import 'package:mentalboost/widgets/widgetGaleryDokter.dart';
import 'package:provider/provider.dart';

class PageProfileDokter extends StatefulWidget {
  const PageProfileDokter({super.key});

  @override
  State<PageProfileDokter> createState() => _PageProfileDokterState();
}

class _PageProfileDokterState extends State<PageProfileDokter> {
  @override
  Widget build(BuildContext context) {
    final provIdDokter = Provider.of<UserLoginProvider>(context);

    final dataDokter = Listdokter.firstWhere(
        (user) => user['id'] == provIdDokter.idUserDoLogin);

    final provMySchedule = Provider.of<ScheduleProvider>(context);

    checkMyPasien() {
      return provMySchedule.scheduleList
          .where((dokter) =>
              dokter.idDokter == dataDokter['id'] && dokter.status == 3)
          .length;
    }

    return Column(
      children: [
        Card(
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(dataDokter['fotoProfile'])),
                      ),
                    )),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        '${dataDokter['namaDokter']}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              Text(
                                'Pasien',
                                style: TextStyle(),
                              ),
                              Text(
                                '${checkMyPasien()}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              Text(
                                'review',
                                style: TextStyle(),
                              ),
                              Text(
                                '${dataDokter['review']}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              Text(
                                'Eksprerience',
                                style: TextStyle(),
                              ),
                              Text(
                                '${dataDokter['pengalaman']}',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          'Price : Rp ${dataDokter['price']}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'My pasien',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ),
        Divider(
          color: Colors.grey,
        ),
        checkMyPasien() != 0
            ? Container(
                child: GridView.builder(
                  padding: EdgeInsets.all(8),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: provMySchedule.scheduleList
                      .where((dokter) =>
                          dokter.idDokter == dataDokter['id'] &&
                          dokter.status == 3)
                      .length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) {
                    var filteredList = provMySchedule.scheduleList
                        .where((dokter) =>
                            dokter.idDokter == dataDokter['id'] &&
                            dokter.status == 3)
                        .toList();
                    var data = filteredList[index];
                    return WidgetGaleryDokter(data: data);
                  },
                ),
              )
            : Text(
                'No Pasien Finished',
                style: TextStyle(
                    color: ColorConstants.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
      ],
    );
  }
}
