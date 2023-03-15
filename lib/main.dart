import 'package:flutter/material.dart';
import 'package:flutter_app/pages/HomePage.dart';
import 'package:flutter_app/pages/mainScreen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
      // home: CaloryCount(),
      home: MainScreen(),
    ));
