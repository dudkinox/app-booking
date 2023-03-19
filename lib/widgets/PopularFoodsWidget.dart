import 'package:flutter/material.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/FoodDetailsPage.dart';

import '../models/response/menu_response.dart';
import '../services/menu_services.dart';

class PopularFoodsWidget extends StatefulWidget {
  @override
  _PopularFoodsWidgetState createState() => _PopularFoodsWidgetState();
}

class _PopularFoodsWidgetState extends State<PopularFoodsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          PopularFoodTitle(),
          Expanded(
            child: PopularFoodItems(),
          )
        ],
      ),
    );
  }
}

class PopularFoodTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String calories;
  String price;

  PopularFoodTiles({
    Key key,
    @required this.name,
    @required this.calories,
    @required this.imageUrl,
    @required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, ScaleRoute(page: FoodDetailsPages()));
      },
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Container(
                  width: 170,
                  height: 210,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              alignment: Alignment.topRight,
                              width: double.infinity,
                              padding: EdgeInsets.only(right: 5, top: 5),
                              child: Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFfae3e2),
                                        blurRadius: 25.0,
                                        offset: Offset(0.0, 0.75),
                                      ),
                                    ]),
                                child: Icon(
                                  Icons.favorite,
                                  color: Color(0xFFfb3132),
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Center(
                                child: Image.network(
                              imageUrl,
                              width: 130,
                              height: 140,
                            )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.only(left: 5, top: 5),
                              child: Text(name,
                                  style: TextStyle(
                                      color: Color(0xFF6e6e71),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(right: 5),
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white70,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFFfae3e2),
                                      blurRadius: 25.0,
                                      offset: Offset(0.0, 0.75),
                                    ),
                                  ]),
                              child: Icon(
                                Icons.near_me,
                                color: Color(0xFFfb3132),
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text("Calories " + calories + " kcal",
                                    style: TextStyle(
                                        color: Color(0xFF6e6e71),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5, right: 5),
                            child: Text('฿' + price,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 218, 61, 13),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class PopularFoodTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        children: <Widget>[
          Text(
            "All Menus",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}

class PopularFoodItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MenusResponse>>(
        future: MenusService.getMenu(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            List<MenusResponse> carouselCard = snapshot.data;

            return ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                for (var i = 0; i < carouselCard.length; i++)
                  PopularFoodTiles(
                      name: carouselCard[i].name,
                      imageUrl: carouselCard[i].image,
                      calories: carouselCard[i].calories.toString(),
                      price: carouselCard[i].price.toString()),
              ],
            );
          } else {
            return Container();
          }
        });
  }
}
