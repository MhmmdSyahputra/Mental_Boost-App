import 'package:flutter/material.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/providers/UsersProviders.dart';
import 'package:mentalboost/widgets/WidgetDokter.dart';
import 'package:mentalboost/widgets/widgetBox.dart';
import 'package:provider/provider.dart';
import '../../../utils/MyGlobalFunction.dart';
import '../../../utils/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provIdUser = Provider.of<UserLoginProvider>(context);
    final user = Provider.of<UsersProvider>(context)
        .getUserById(provIdUser.idUserDoLogin);

    final hour = DateTime.now().hour;

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: [
              Container(
                child: Row(children: [
                  Expanded(
                      child: Row(
                    children: [
                      Text(
                        '${greeting(hour)},',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      )
                    ],
                  )),
                ]),
              ),
              Container(
                child: Row(children: [
                  Expanded(
                      child: Row(
                    children: [
                      Container(
                        width: 250,
                        child: Text(
                          '${user.username}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      )
                    ],
                  )),
                ]),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(children: [
                  Expanded(
                      child: Row(
                    children: [
                      Text(
                        'Populer',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  )),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        Listpopuler.length,
                        (index) => Padding(
                              padding: EdgeInsets.all(0),
                              child: WidgetBox(data: Listpopuler[index]),
                            )),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(children: [
                  Expanded(
                      child: Row(
                    children: [
                      Text(
                        'Dokter Populer',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  )),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Column(
                    children: List.generate(
                        Listdokter.length,
                        (index) => Padding(
                              padding: EdgeInsets.all(0),
                              child: WidgetDokter(data: Listdokter[index]),
                            ))),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
