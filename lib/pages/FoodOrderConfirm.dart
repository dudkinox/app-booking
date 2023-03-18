import 'package:flutter/material.dart';
import 'package:flutter_app/common/button.dart';
import 'package:flutter_app/pages/AccountCustomer.dart';
import 'package:flutter_app/pages/CaloriesCount.dart';

import '../animation/ScaleRoute.dart';
import '../themes/constant.dart';

class FoodOrderConfirm extends StatefulWidget {
  const FoodOrderConfirm({Key key}) : super(key: key);

  @override
  State<FoodOrderConfirm> createState() => _FoodOrderConfirmState();
}

class _FoodOrderConfirmState extends State<FoodOrderConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfae3e2),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        leading: BackButton(color: Color(0xFF3a3737)),
        title: Text(
          "Detail Booking",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        brightness: Brightness.light,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name : ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 32, 32, 32),
                          fontFamily: defaultFontFamily,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Phone : ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 32, 32, 32),
                          fontFamily: defaultFontFamily,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Table Number : ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 32, 32, 32),
                          fontFamily: defaultFontFamily,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Person Number : ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 32, 32, 32),
                          fontFamily: defaultFontFamily,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Time : ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 32, 32, 32),
                          fontFamily: defaultFontFamily,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Booking date : ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 32, 32, 32),
                          fontFamily: defaultFontFamily,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // ButtonKYP(
            //   height: 40,
            //   width: 120,
            //   text: "Menu",
            //   process: () {
            //     Navigator.push(context, ScaleRoute(page: MenuWidget()));
            //   },
            // ),
            Divider(
              color: Colors.orange,
              thickness: 2,
              indent: 40,
              endIndent: 40,
            ),
            // PopularFoodsWidget(),
            Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Text(
                    "Detail Order Booking",
                    style: TextStyle(
                      color: Color.fromARGB(255, 32, 32, 32),
                      fontFamily: defaultFontFamily,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order List",
                              style: TextStyle(
                                color: Color.fromARGB(255, 32, 32, 32),
                                fontFamily: defaultFontFamily,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Pho x2",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF3a3a3b),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "528 ฿",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF3a3a3b),
                                  ),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Xoi x2",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF3a3a3b),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "399 ฿",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF3a3a3b),
                                  ),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Food Price Total",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF3a3a3b),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "1,196 ฿",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF3a3a3b),
                                  ),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Deposit 70%",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF3a3a3b),
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "837 ฿",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF3a3a3b),
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Calories Total",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF3a3a3b),
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "2000 kcal",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF3a3a3b),
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Average Calory for a person",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF3a3a3b),
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "667 kcal",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF3a3a3b),
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ButtonKYP(
              height: 50,
              width: 370,
              text: "Deposit Payment",
              process: () async {
                Navigator.push(context, ScaleRoute(page: AccountCustomer()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
