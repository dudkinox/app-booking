import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/common/button.dart';
import 'package:flutter_app/widgets/BookingFoodWidget.dart';
import 'package:intl/intl.dart';
import '../themes/constant.dart';

class BookTableWidget extends StatefulWidget {
  @override
  _BookTableWidgetState createState() => _BookTableWidgetState();
}

class _BookTableWidgetState extends State<BookTableWidget> {
  String nameTable = "";
  TextEditingController amount = new TextEditingController();
  TextEditingController timeValue = new TextEditingController();
  TimeOfDay pickedTime = TimeOfDay.now();

  String formatTimeOfDay(TimeOfDay tod) {
    final now = new DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    final format = DateFormat.jm(); //"6:00 AM"
    return format.format(dt);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                BookTableTiles(
                    name: "Number 1",
                    imageUrl: "2",
                    func: () {
                      setState(() {
                        nameTable = "Number 1";
                      });
                    }),
                BookTableTiles(
                  name: "Number 2",
                  imageUrl: "2",
                  func: () {
                    setState(() {
                      nameTable = "Number 2";
                    });
                  },
                ),
                BookTableTiles(
                  name: "Number 3",
                  imageUrl: "not2",
                  func: () {
                    setState(() {
                      nameTable = "Number 3";
                    });
                  },
                ),
                BookTableTiles(
                  name: "Number 4",
                  imageUrl: "2",
                  func: () {
                    setState(() {
                      nameTable = "Number 4";
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                BookTableTiles(
                  name: "Number 5",
                  imageUrl: "4",
                  func: () {
                    setState(() {
                      nameTable = "Number 5";
                    });
                  },
                ),
                BookTableTiles(
                  name: "Number 6",
                  imageUrl: "not4",
                  func: () {
                    setState(() {
                      nameTable = "Number 6";
                    });
                  },
                ),
                BookTableTiles(
                  name: "Number 7",
                  imageUrl: "4",
                  func: () {
                    setState(() {
                      nameTable = "Number 7";
                    });
                  },
                ),
                BookTableTiles(
                  name: "Number 8",
                  imageUrl: "4",
                  func: () {
                    setState(() {
                      nameTable = "Number 8";
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                BookTableTiles(
                  name: "Number 9",
                  imageUrl: "not6",
                  func: () {
                    setState(() {
                      nameTable = "Number 9";
                    });
                  },
                ),
                BookTableTiles(
                  name: "Number 10",
                  imageUrl: "6",
                  func: () {
                    setState(() {
                      nameTable = "Number 10";
                    });
                  },
                ),
                BookTableTiles(
                  name: "Number 11",
                  imageUrl: "6",
                  func: () {
                    setState(() {
                      nameTable = "Number 11";
                    });
                  },
                ),
                BookTableTiles(
                  name: "Number 12",
                  imageUrl: "6",
                  func: () {
                    setState(() {
                      nameTable = "Number 12";
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 20, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/Table/6.png",
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Available',
                      style: TextStyle(
                        color: Color(0xFF6e6e71),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/images/Table/not6.png",
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Unavailable',
                      style: TextStyle(
                        color: Color(0xFF6e6e71),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          nameTable == ""
              ? SizedBox()
              : Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Table Booking : ${nameTable}",
                          style: TextStyle(
                            color: Color.fromARGB(255, 56, 55, 55),
                            fontFamily: defaultFontFamily,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 200,
                              child: TextField(
                                controller: amount,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(2),
                                  FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'),
                                  ),
                                ],
                                showCursor: true,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 4.5, horizontal: 10),
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
                                    Icons.people_alt_rounded,
                                    color: Color(0xFF666666),
                                    size: defaultIconSize,
                                  ),
                                  fillColor: Color.fromARGB(255, 249, 251, 255),
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 56, 55, 55),
                                      fontFamily: defaultFontFamily,
                                      fontSize: defaultFontSize),
                                  hintText: "Amount of Customers",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (amount.text == "") {
                                  setState(() {
                                    amount.text = "1";
                                  });
                                } else {
                                  if (int.parse(amount.text) < 99) {
                                    setState(() {
                                      amount.text = (int.parse(amount.text) + 1)
                                          .toString();
                                    });
                                  }
                                }
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.add,
                                  color: Color.fromARGB(255, 56, 55, 55),
                                  size: 16,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (amount.text != "" &&
                                    int.parse(amount.text) == 1) {
                                  setState(() {
                                    amount.text = "";
                                  });
                                } else {
                                  if (amount.text != "" &&
                                      int.parse(amount.text) > 0) {
                                    setState(() {
                                      amount.text = (int.parse(amount.text) - 1)
                                          .toString();
                                    });
                                  }
                                }
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.remove,
                                  color: Color.fromARGB(255, 56, 55, 55),
                                  size: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () async {
                            TimeOfDay time = await showTimePicker(
                                context: context, initialTime: pickedTime);
                            if (time == null) return null;
                            timeValue.text = formatTimeOfDay(time);
                          },
                          child: TextField(
                            enabled: false,
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
                              hintText: "Time of Booking",
                            ),
                            controller: timeValue,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: ButtonKYP(
                            height: 40,
                            width: 120,
                            text: "OK",
                            process: () {
                              if (nameTable != "" &&
                                  amount.text != "" &&
                                  timeValue.text != "") {
                                if (amount.text == "0") {
                                  setState(() {
                                    amount.text = "";
                                  });
                                } else {
                                  // รอ API
                                  print(nameTable);
                                  print(amount.text);
                                  print(timeValue.text);
                                  print("send");
                                  return showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                      title: Text(
                                        "Notification",
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Table Number : ${nameTable}",
                                          ),
                                          Text(
                                            "Person Number : ${amount.text} People",
                                          ),
                                          Text(
                                            "Time : ${timeValue.text}",
                                          ),
                                        ],
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(ctx).pop();
                                          },
                                          child: Text("Cancel"),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(ctx).pop();
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BookingFoodWidget()),
                                            );
                                          },
                                          child: Text("Confirm"),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

class BookTableTiles extends StatelessWidget {
  String name;
  String imageUrl;
  Function() func;

  BookTableTiles({
    Key key,
    @required this.name,
    @required this.imageUrl,
    @required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, right: 5, top: 10, bottom: 1),
            // decoration: new BoxDecoration(boxShadow: [
            //   new BoxShadow(
            //     color: Color(0xFFfae3e2),
            //     blurRadius: 25.0,
            //     offset: Offset(0.0, 0.75),
            //   ),
            // ]),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(3.0),
                  ),
                ),
                child: Container(
                  width: 60,
                  height: 60,
                  child: Center(
                      child: Image.asset(
                    'assets/images/Table/' + imageUrl + ".png",
                    width: 50,
                    height: 50,
                  )),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 5,
            ),
            child: Text(name,
                style: TextStyle(
                    color: Color(0xFF6e6e71),
                    fontSize: 14,
                    fontWeight: FontWeight.w400)),
          ),
        ],
      ),
    );
  }
}
