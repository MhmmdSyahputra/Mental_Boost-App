import 'package:flutter/material.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/utils/data.dart';
import 'package:mentalboost/views/dokter/appointment/pageMyAppointment.dart';
import 'package:mentalboost/views/dokter/home/pageHomeDokter.dart';
import 'package:mentalboost/views/dokter/profile/PageProfileDokter.dart';
import 'package:provider/provider.dart';

class TabBarDokter extends StatelessWidget {
  const TabBarDokter({Key? key});

  @override
  Widget build(BuildContext context) {
    final provIdDokter = Provider.of<UserLoginProvider>(context);

    final dataDokter = Listdokter.firstWhere(
        (user) => user['id'] == provIdDokter.idUserDoLogin);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: ColorConstants.primaryColor,
                  title: Text('${dataDokter['namaDokter']}'),
                  floating: true,
                  pinned: true,
                  snap: true,
                  bottom: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.home)),
                      Tab(icon: Icon(Icons.calendar_today)),
                      Tab(icon: Icon(Icons.person)),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                // Halaman pertama
                SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: PageHomeDokter(),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: PageAppointmentDokter(),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: PageProfileDokter(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
