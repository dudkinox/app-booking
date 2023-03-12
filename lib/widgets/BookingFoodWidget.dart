import 'package:flutter/material.dart';
import 'package:flutter_app/common/button.dart';
import 'package:flutter_app/widgets/PopularFoodsWidget.dart';

import '../animation/ScaleRoute.dart';
import '../themes/constant.dart';
import 'BottomNavBarWidget.dart';
import 'MenuWidget.dart';

class BookingFoodWidget extends StatefulWidget {
  const BookingFoodWidget({Key key}) : super(key: key);

  @override
  State<BookingFoodWidget> createState() => _BookingFoodWidgetState();
}

class _BookingFoodWidgetState extends State<BookingFoodWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfae3e2),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: Text(
          "Detail Table Booking",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
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
            GestureDetector(
              onTap: () {
                Navigator.push(context, ScaleRoute(page: MenuWidget()));
              },
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Text("Menu For Booking"),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 300,
                          childAspectRatio: 3 / 4,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
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
                                  Image.asset("assets/images/menus/pho.png"),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Food Name : ",
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
                                    "Calories : ",
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
                                    "Price : ",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 32, 32, 32),
                                      fontFamily: defaultFontFamily,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
