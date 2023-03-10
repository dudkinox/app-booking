import 'package:flutter/material.dart';

import '../themes/constant.dart';

class BookTableWidget extends StatefulWidget {
  @override
  _BookTableWidgetState createState() => _BookTableWidgetState();
}

class _BookTableWidgetState extends State<BookTableWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              BookTableTiles(name: "Number 1", imageUrl: "2", slug: ""),
              BookTableTiles(name: "Number 2", imageUrl: "2", slug: ""),
              BookTableTiles(name: "Number 3", imageUrl: "not2", slug: ""),
              BookTableTiles(name: "Number 4", imageUrl: "2", slug: ""),
            ],
          ),
        ),
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              BookTableTiles(name: "Number 5", imageUrl: "4", slug: ""),
              BookTableTiles(name: "Number 6", imageUrl: "not4", slug: ""),
              BookTableTiles(name: "Number 7", imageUrl: "4", slug: ""),
              BookTableTiles(name: "Number 8", imageUrl: "4", slug: ""),
            ],
          ),
        ),
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              BookTableTiles(name: "Number 9", imageUrl: "not6", slug: ""),
              BookTableTiles(name: "Number 10", imageUrl: "6", slug: ""),
              BookTableTiles(name: "Number 11", imageUrl: "6", slug: ""),
              BookTableTiles(name: "Number 12", imageUrl: "6", slug: ""),
            ],
          ),
        ),
        Container(
          height: 50,
          child: Row(
            children: <Widget>[
              Image.asset(
                "assets/images/Table/6.png",
                width: 20,
                height: 20,
              ),
              Text(
                'Available',
                style: TextStyle(
                  color: Color(0xFF6e6e71),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Image.asset(
                "assets/images/Table/not6.png",
                width: 20,
                height: 20,
              ),
              Text(
                'Unavailable',
                style: TextStyle(
                  color: Color(0xFF6e6e71),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextField(
                showCursor: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 4.5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                  hintText: "Amount of Customers",
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BookTableTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String slug;

  BookTableTiles(
      {Key key,
      @required this.name,
      @required this.imageUrl,
      @required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, right: 5, top: 10, bottom: 1),
            decoration: new BoxDecoration(boxShadow: [
              new BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 25.0,
                offset: Offset(0.0, 0.75),
              ),
            ]),
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
