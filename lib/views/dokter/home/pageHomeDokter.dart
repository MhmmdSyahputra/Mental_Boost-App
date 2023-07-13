import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:mentalboost/providers/LoginRegisProvider.dart';
import 'package:mentalboost/providers/ScheduleProvider.dart';
import 'package:mentalboost/utils/Mycolor.dart';
import 'package:mentalboost/utils/data.dart';
import 'package:mentalboost/widgets/widgetCardDashboard.dart';
import 'package:provider/provider.dart';

class PageHomeDokter extends StatefulWidget {
  const PageHomeDokter({super.key});

  @override
  State<PageHomeDokter> createState() => _PageHomeDokterState();
}

class _PageHomeDokterState extends State<PageHomeDokter> {
  @override
  Widget build(BuildContext context) {
    final provIdDokter = Provider.of<UserLoginProvider>(context);

    final dataDokter = Listdokter.firstWhere(
        (user) => user['id'] == provIdDokter.idUserDoLogin);

    final provMySchedule = Provider.of<ScheduleProvider>(context);

    getCount(int status) {
      return provMySchedule.scheduleList
          .where((data) =>
              data.idDokter == dataDokter['id'] && data.status == status)
          .map((e) {})
          .toList()
          .length;
    }

    return SingleChildScrollView(
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height + 10,
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 400,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: ColorConstants.primaryColor,
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'MY IDCARD',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: ColorConstants.textColorLight),
                          ),
                        ),
                        CreditCardWidget(
                          cardNumber: '${dataDokter['id']}',
                          expiryDate: '${dataDokter['spesialis']}',
                          cardBgColor: const Color(0xCC001C30),
                          cardHolderName: '${dataDokter['namaDokter']}',
                          cvvCode: '',
                          onCreditCardWidgetChange: (CreditCardBrand) {},
                          showBackView: false,
                          obscureCardNumber: false,
                          isHolderNameVisible: true,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 270,
            child: Container(
              padding: EdgeInsets.only(
                top: 20,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                      'Dashboard',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                WidgetCardDashboard(
                                    title: 'Waiting',
                                    color: Color(0xFFF86F03),
                                    count: getCount(0)),
                              ],
                            ),
                            Row(
                              children: [
                                WidgetCardDashboard(
                                    title: 'Proccess',
                                    color: Color(0xFF7E8AFF),
                                    count: getCount(1)),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 80,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                WidgetCardDashboard(
                                    title: 'Done',
                                    color: Color(0xFF03C988),
                                    count: getCount(3)),
                              ],
                            ),
                            Row(
                              children: [
                                WidgetCardDashboard(
                                    title: 'Cancel',
                                    color: Color(0xFFEF6262),
                                    count: getCount(2)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
