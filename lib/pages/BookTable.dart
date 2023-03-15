import 'package:flutter/material.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/SignInPage.dart';
import 'package:flutter_app/widgets/BottomNavBarWidget.dart';
import 'package:flutter_app/widgets/BookTableWidget.dart';

class BookTable extends StatefulWidget {
  @override
  _BookTableState createState() => _BookTableState();
}

class _BookTableState extends State<BookTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfae3e2),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Center(
          child: Text(
            "Which would you like to sit?",
            style: TextStyle(
                color: Color(0xFF3a3737),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.login,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {
                Navigator.push(context, ScaleRoute(page: SignInPage()));
              })
        ],
      ),
      body: BookTableWidget(),
      // bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
