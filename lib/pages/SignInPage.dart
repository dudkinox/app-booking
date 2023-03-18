import 'package:flutter/material.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/SignUpPage.dart';

import '../common/button.dart';
import '../services/account_services.dart';
import '../themes/constant.dart';
import 'ForgotPassword.dart';
import 'HomePage.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 230,
                    height: 100,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/menus/kyp.png",
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    showCursor: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      fillColor: Color(0xFFF2F3F5),
                      hintStyle: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize),
                      hintText: "Username",
                    ),
                    controller: username,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    showCursor: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      fillColor: Color(0xFFF2F3F5),
                      hintStyle: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: defaultFontFamily,
                        fontSize: defaultFontSize,
                      ),
                      hintText: "Password",
                    ),
                    controller: password,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context, ScaleRoute(page: ForgotPassword())),
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize,
                          fontStyle: FontStyle.normal,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ButtonKYP(
                    height: 55,
                    width: 350,
                    text: "SIGN IN",
                    process: () {
                      Accountservices.signIn(username.text, password.text)
                          .then((check) => {
                                if (check)
                                  {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return StatefulBuilder(
                                          builder: (BuildContext context,
                                              StateSetter setState) {
                                            return HomePage();
                                            // AlertDialog(
                                            //   title: Text(
                                            //     'Welcome to Korn-Yapa!',
                                            //     style: TextStyle(
                                            //       fontSize: 20,
                                            //       fontWeight: FontWeight.bold,
                                            //     ),
                                            //   ),
                                            //   content: Text(
                                            //     'What would you like to?',
                                            //     style: TextStyle(
                                            //       fontSize: 16,
                                            //     ),
                                            //   ),
                                            //   actions: [
                                            //     ButtonKYP(
                                            //       height: 40,
                                            //       width: 200,
                                            //       text: 'Book Table',
                                            //       process: () async {
                                            //         Navigator.push(
                                            //             context,
                                            //             ScaleRoute(
                                            //                 page: BookTable()));
                                            //       },
                                            //     ),
                                            //     SizedBox(
                                            //       height: 7,
                                            //     ),
                                            //     ButtonKYP(
                                            //       height: 40,
                                            //       width: 200,
                                            //       text: 'Count Calory',
                                            //       process: () async {
                                            //         Navigator.push(
                                            //             context,
                                            //             ScaleRoute(
                                            //                 page:
                                            //                     CaloryCount()));
                                            //       },
                                            //     ),
                                            //   ],
                                            // );
                                          },
                                        );
                                      },
                                    )
                                  }
                                else
                                  {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text('Can not Sign In!'),
                                          content: Text(
                                              'Username or Password invalid.'),
                                          actions: [
                                            TextButton(
                                              child: Text('Close'),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    )
                                  }
                              });
                    },
                  ),
                  SizedBox(
                    height: 2,
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context, ScaleRoute(page: SignUpPage())),
                      child: Container(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color(0xFFf7418c),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
