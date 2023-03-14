import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../animation/ScaleRoute.dart';
import '../widgets/MenuWidget.dart';

class TableAvailable extends StatefulWidget {
  @override
  _TableAvailableState createState() => _TableAvailableState();
}

class _TableAvailableState extends State<TableAvailable> {
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
          TableAvailableTitle(),
          Column(
            children: [
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    BookTableTiles(
                        name: "Number 1",
                        imageUrl: "table",
                        func: () {
                          setState(() {
                            nameTable = "Number 1";
                          });
                        }),
                    BookTableTiles(
                      name: "Number 2",
                      imageUrl: "table",
                      func: () {
                        setState(() {
                          nameTable = "Number 2";
                        });
                      },
                    ),
                    BookTableTiles(
                      name: "Number 3",
                      imageUrl: "untable",
                      func: () {
                        setState(() {
                          nameTable = "Number 3";
                        });
                      },
                    ),
                    BookTableTiles(
                      name: "Number 4",
                      imageUrl: "table",
                      func: () {
                        setState(() {
                          nameTable = "Number 4";
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                BookTableTiles(
                  name: "Number 5",
                  imageUrl: "table",
                  func: () {
                    setState(() {
                      nameTable = "Number 5";
                    });
                  },
                ),
                BookTableTiles(
                  name: "Number 6",
                  imageUrl: "untable",
                  func: () {
                    setState(() {
                      nameTable = "Number 6";
                    });
                  },
                ),
                BookTableTiles(
                  name: "Number 7",
                  imageUrl: "table",
                  func: () {
                    setState(() {
                      nameTable = "Number 7";
                    });
                  },
                ),
                BookTableTiles(
                  name: "Number 8",
                  imageUrl: "table",
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
                  imageUrl: "untable",
                  func: () {
                    setState(() {
                      nameTable = "Number 9";
                    });
                  },
                ),
                BookTableTiles(
                  name: "Number 10",
                  imageUrl: "table",
                  func: () {
                    setState(() {
                      nameTable = "Number 10";
                    });
                  },
                ),
                BookTableTiles(
                  name: "Number 11",
                  imageUrl: "table",
                  func: () {
                    setState(() {
                      nameTable = "Number 11";
                    });
                  },
                ),
                BookTableTiles(
                  name: "Number 12",
                  imageUrl: "table",
                  func: () {
                    setState(() {
                      nameTable = "Number 12";
                    });
                  },
                ),
              ],
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

class TableAvailableTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Table Status for Booking",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
          Text(
            "See all",
            style: TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}
