import 'package:flutter/material.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/utils/data.dart';
import 'package:mentalboost/views/dokter/appointment/pageMyAppointment.dart';
import 'package:mentalboost/views/dokter/home/pageHomeDokter.dart';
import 'package:mentalboost/views/dokter/profile/PageProfileDokter.dart';
import 'package:mentalboost/views/signin/ScreenLogin.dart';
import 'package:provider/provider.dart';

class TabBarDokter extends StatelessWidget {
  const TabBarDokter({Key? key});

  @override
  Widget build(BuildContext context) {
    final provIdDokter = Provider.of<UserLoginProvider>(context);

    final dataDokter = Listdokter.firstWhere(
        (user) => user['id'] == provIdDokter.idUserDoLogin);

    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: ColorConstants.primaryColor,
                elevation: 10,
                title: Row(
                  children: [
                    Text('${dataDokter['namaDokter']}'),
                  ],
                ),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                          (route) => false,
                        );
                      },
                      icon: Icon(Icons.logout_outlined)),
                ],
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
                  // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
    );
  }
}
