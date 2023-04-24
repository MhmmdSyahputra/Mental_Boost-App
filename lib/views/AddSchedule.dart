import 'package:flutter/material.dart';

class AddScheduleScreen extends StatefulWidget {
  const AddScheduleScreen({super.key});

  @override
  State<AddScheduleScreen> createState() => _AddScheduleScreenState();
}

class _AddScheduleScreenState extends State<AddScheduleScreen> {
  String? selectedGender;

  List<String> genderOptions = [
    'Male',
    'Female',
    'Child',
  ];

  String? selectedTime;

  List<String> timeOptions = [
    '9:00 AM',
    '10:00 AM',
    '11:00 AM',
    '2:00 PM',
    '4:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
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
                              Column(
                                children: [
                                  Text(
                                    'Name',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'halo',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'halo',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              ),
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
                                'Appointment For',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  height: 50,
                                  // color: Colors.orange,
                                  child: GridView.count(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    crossAxisCount: 1,
                                    children: [
                                      Wrap(
                                        spacing: 10.0,
                                        children: genderOptions.map((gender) {
                                          return ChoiceChip(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 25),
                                            label: Text(
                                              gender,
                                              style: TextStyle(
                                                color: selectedGender == gender
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                            selected: selectedGender == gender,
                                            selectedColor: Color(0xFF4E37A9),
                                            onSelected: (selected) {
                                              setState(() {
                                                selectedGender =
                                                    selected ? gender : null;
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
                                'Time',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
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
                                        selectedColor: Color(0xFF4E37A9),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
