import 'package:flutter/material.dart';
import 'package:flutter_app/pages/BookTable.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
      // home: CaloryCount(),
      home: BookTable(),
    ));
