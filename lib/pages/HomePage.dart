import 'package:flutter/material.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/SignInPage.dart';
import '../widgets/PopularFoodsWidget.dart';
import 'TableAvailable.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "Welcome To Korn-Yapa!",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            PopularFoodsWidget(),
            TableAvailable(),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavBarWidget(selectIndex: _selectedIndex),
    );
  }
}
