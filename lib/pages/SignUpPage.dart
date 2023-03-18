import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/SignInPage.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../common/button.dart';
import '../themes/constant.dart';
import '../services/account_services.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController fullname = new TextEditingController();
  TextEditingController birthday = new TextEditingController();
  String sex = "Male";
  TextEditingController weight = new TextEditingController();
  TextEditingController height = new TextEditingController();
  TextEditingController phonenumber = new TextEditingController();
  List<String> gender = [
    "Male",
    "Female",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
        // width: double.infinity,
        // height: double.infinity,
        color: Colors.white70,
        child: LayoutBuilder(builder: (context, constraint) {
          var image = Image.asset(
            "assets/images/menus/kyp.png",
          );
          return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: InkWell(
                        child: Container(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Icon(Icons.close),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Flexible(
                      flex: 15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 230,
                            height: 100,
                            alignment: Alignment.center,
                            child: image,
                          ),
                          TextField(
                            showCursor: true,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 4.5),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.person_rounded,
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
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 4.5),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.password,
                                color: Color(0xFF666666),
                                size: defaultIconSize,
                              ),
                              fillColor: Color(0xFFF2F3F5),
                              hintStyle: TextStyle(
                                  color: Color(0xFF666666),
                                  fontFamily: defaultFontFamily,
                                  fontSize: defaultFontSize),
                              hintText: "Password",
                            ),
                            controller: password,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            showCursor: true,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 4.5),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color(0xFF666666),
                                size: defaultIconSize,
                              ),
                              fillColor: Color(0xFFF2F3F5),
                              hintStyle: TextStyle(
                                  color: Color(0xFF666666),
                                  fontFamily: defaultFontFamily,
                                  fontSize: defaultFontSize),
                              hintText: "Email",
                            ),
                            controller: email,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            showCursor: true,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 4.5),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
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
                              hintText: "Full name",
                            ),
                            controller: fullname,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    DatePicker.showDatePicker(context,
                                        showTitleActions: true,
                                        //minTime: DateTime(2018, 3, 5),
                                        //maxTime: DateTime(2019, 6, 7),
                                        theme: DatePickerTheme(
                                            headerColor: Color.fromARGB(
                                                255, 225, 139, 59),
                                            backgroundColor: Color.fromARGB(
                                                255, 251, 246, 227),
                                            itemStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 11, 11, 11),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                            doneStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 12, 12, 12),
                                                fontSize: 16)),
                                        onConfirm: (date) {
                                      var day = date.toString().split(" ");
                                      birthday.text = day[0];
                                    },
                                        currentTime: DateTime.now(),
                                        locale: LocaleType.en);
                                  },
                                  child: TextField(
                                    enabled: false,
                                    showCursor: true,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 4.5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.date_range,
                                        color: Color(0xFF666666),
                                        size: defaultIconSize,
                                      ),
                                      fillColor: Color(0xFFF2F3F5),
                                      hintStyle: TextStyle(
                                        color: Color(0xFF666666),
                                        fontFamily: defaultFontFamily,
                                        fontSize: defaultFontSize,
                                      ),
                                      hintText: "Birthday",
                                    ),
                                    controller: birthday,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Flexible(
                                flex: 1,
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF2F3F5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      padding: EdgeInsets.only(left: 44.0),
                                      child: DropdownButton(
                                        underline: SizedBox(),
                                        hint: Text(
                                          "Gender",
                                          style: TextStyle(
                                            color: Color(0xFF666666),
                                            fontFamily: defaultFontFamily,
                                            fontSize: defaultFontSize,
                                          ),
                                        ),
                                        isExpanded: true,
                                        items: gender.map(
                                          (val) {
                                            return DropdownMenuItem(
                                              value: val,
                                              child: Text(val),
                                            );
                                          },
                                        ).toList(),
                                        value: sex,
                                        onChanged: (String value) {
                                          setState(() {
                                            sex = value;
                                            print(sex);
                                          });
                                        },
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 15, left: 15),
                                      child: Icon(
                                        Icons.male,
                                        color: Color(0xFF666666),
                                        size: defaultIconSize,
                                      ),
                                    ),
                                  ],
                                ),
                                // TextField(
                                //   showCursor: true,
                                //   decoration: InputDecoration(
                                //     contentPadding: EdgeInsets.symmetric(vertical: 4.5),
                                //     border: OutlineInputBorder(
                                //       borderRadius:
                                //           BorderRadius.all(Radius.circular(10.0)),
                                //       borderSide: BorderSide(
                                //         width: 0,
                                //         style: BorderStyle.none,
                                //       ),
                                //     ),
                                //     filled: true,
                                //     prefixIcon: Icon(
                                //       Icons.male,
                                //       color: Color(0xFF666666),
                                //       size: defaultIconSize,
                                //     ),
                                //     fillColor: Color(0xFFF2F3F5),
                                //     hintStyle: TextStyle(
                                //       color: Color(0xFF666666),
                                //       fontFamily: defaultFontFamily,
                                //       fontSize: defaultFontSize,
                                //     ),
                                //     hintText: "Gender",
                                //   ),
                                //   controller: sex,
                                // ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: TextField(
                                  showCursor: true,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]'),
                                    ),
                                  ],
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 4.5),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    filled: true,
                                    prefixIcon: Icon(
                                      Icons.monitor_weight,
                                      color: Color(0xFF666666),
                                      size: defaultIconSize,
                                    ),
                                    fillColor: Color(0xFFF2F3F5),
                                    hintStyle: TextStyle(
                                      color: Color(0xFF666666),
                                      fontFamily: defaultFontFamily,
                                      fontSize: defaultFontSize,
                                    ),
                                    hintText: "Weight",
                                  ),
                                  controller: weight,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Flexible(
                                flex: 1,
                                child: TextField(
                                  showCursor: true,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]'),
                                    ),
                                  ],
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 4.5),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    filled: true,
                                    prefixIcon: Icon(
                                      Icons.height_sharp,
                                      color: Color(0xFF666666),
                                      size: defaultIconSize,
                                    ),
                                    fillColor: Color(0xFFF2F3F5),
                                    hintStyle: TextStyle(
                                      color: Color(0xFF666666),
                                      fontFamily: defaultFontFamily,
                                      fontSize: defaultFontSize,
                                    ),
                                    hintText: "Height",
                                  ),
                                  controller: height,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            showCursor: true,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                RegExp(r'[0-9]'),
                              ),
                            ],
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 4.5),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Color(0xFF666666),
                                size: defaultIconSize,
                              ),
                              fillColor: Color(0xFFF2F3F5),
                              hintStyle: TextStyle(
                                  color: Color(0xFF666666),
                                  fontFamily: defaultFontFamily,
                                  fontSize: defaultFontSize),
                              hintText: "Phone Number",
                            ),
                            controller: phonenumber,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ButtonKYP(
                            height: 55,
                            width: 350,
                            text: "SIGN UP",
                            process: () async {
                              await Accountservices.signUp(
                                  username.text,
                                  email.text,
                                  password.text,
                                  sex,
                                  fullname.text,
                                  weight.text,
                                  height.text,
                                  birthday.text,
                                  phonenumber.text);
                              Navigator.pop(context);
                            },
                          ),
                          SizedBox(
                            height: 10,
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
                                "Already have an account? ",
                                style: TextStyle(
                                  color: Color(0xFF666666),
                                  fontFamily: defaultFontFamily,
                                  fontSize: defaultFontSize,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context, ScaleRoute(page: SignInPage()));
                              },
                              child: Container(
                                child: Text(
                                  "Sign In",
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
            ),
          );
        }),
      ),
    );
  }
}
