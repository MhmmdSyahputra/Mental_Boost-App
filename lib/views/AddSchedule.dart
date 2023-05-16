import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:mentalboost/model/ScheduleModel.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/utils/MyGlobalFunction.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/views/ScreenSuccess.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../providers/LoginRegisProvider.dart';
import '../providers/UsersProviders.dart';

class AddScheduleScreen extends StatefulWidget {
  final String profil;
  final String name;
  final String price;
  final Color color;
  final String spesialis;

  const AddScheduleScreen(
      {super.key,
      required this.profil,
      required this.name,
      required this.price,
      required this.color,
      required this.spesialis});

  @override
  State<AddScheduleScreen> createState() => _AddScheduleScreenState();
}

class _AddScheduleScreenState extends State<AddScheduleScreen> {
  String nameInput = '';
  String ageInput = '';
  String? selectedGender;
  String? selectedTime;
  String? dateInput;

  final TextEditingController _nameInputController = TextEditingController();
  final TextEditingController _ageInputController = TextEditingController();

  @override
  void dispose() {
    _nameInputController.dispose();
    _ageInputController.dispose();
    super.dispose();
  }

  List<String> genderOptions = [
    'Male',
    'Female',
    'Child',
  ];

  List<String> timeOptions = [
    '9:00 AM',
    '10:00 AM',
    '11:00 AM',
    '2:00 PM',
    '4:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    var uuid = Uuid();

    DateTime now = DateTime.now();
    String dateNow =
        '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
    final provIdUser = Provider.of<UserLoginProvider>(context);
    final user = Provider.of<UsersProvider>(context)
        .getUserById(provIdUser.idUserDoLogin);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Time',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                              height: 100,
                              // color: Colors.orange,
                              child: GridView.count(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                crossAxisCount: 1,
                                children: [
                                  Wrap(
                                    spacing: 10.0,
                                    children: timeOptions.map((time) {
                                      return ChoiceChip(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                        label: Text(
                                          time,
                                          style: TextStyle(
                                            color: selectedTime == time
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        selected: selectedTime == time,
                                        selectedColor:
                                            ColorConstants.primaryColor,
                                        onSelected: (selected) {
                                          setState(() {
                                            selectedTime =
                                                selected ? time : null;
                                          });
                                        },
                                      );
                                    }).toList(),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                              child: DateTimePicker(
                            icon: Icon(Icons.date_range),
                            initialValue: '',
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                            onChanged: (val) => {dateInput = val},
                            validator: (val) {
                              dateInput = val;
                              return null;
                            },
                            onSaved: (val) => {dateInput = val},
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                            width: double.infinity, // membuat button full width
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'RP. ${widget.price}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10), // set radius sudut
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color(0xFFDCDCDC), // set warna background
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                            width: double.infinity, // membuat button full width
                            child: ElevatedButton(
                              onPressed: () {
                                Provider.of<ScheduleProvider>(context,
                                        listen: false)
                                    .AddSchedule(ScheduleModel(
                                        id: uuid.v1().substring(0, 8),
                                        profilDokter: widget.profil,
                                        nameDokter: widget.name,
                                        priceDokter: widget.price,
                                        spesialisDokter: widget.spesialis,
                                        iduser: user.id,
                                        namePasien: user.username,
                                        agePasien:
                                            getOld(user.dateOfBirth).toString(),
                                        appointment: user.gender,
                                        orderDate: dateNow,
                                        color: widget.color,
                                        time: selectedTime.toString(),
                                        date: dateInput.toString(),
                                        status: 2));
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SuccessScreen()));
                              },
                              child: Text(
                                'BUAT JADWAL',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10), // set radius sudut
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color(0xFF4E37A9), // set warna background
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
