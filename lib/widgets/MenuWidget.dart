import 'package:flutter/material.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/FoodOrderPage.dart';

import '../themes/constant.dart';

class MenuWidget extends StatefulWidget {
  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfae3e2),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: Text(
          "Korn-yapa Menu",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 3 / 3.7,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return BoxItemFood(idFood: index);
                  // Container(
                  //   alignment: Alignment.centerLeft,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(15),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Image.asset("assets/images/menus/pho.png"),
                  //         SizedBox(
                  //           height: 7,
                  //         ),
                  //         Text(
                  //           "Food Name : ",
                  //           style: TextStyle(
                  //             color: Color.fromARGB(255, 32, 32, 32),
                  //             fontFamily: defaultFontFamily,
                  //             fontSize: 16,
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           height: 7,
                  //         ),
                  //         Text(
                  //           "Calories : ",
                  //           style: TextStyle(
                  //             color: Color.fromARGB(255, 32, 32, 32),
                  //             fontFamily: defaultFontFamily,
                  //             fontSize: 16,
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           height: 7,
                  //         ),
                  //         Text(
                  //           "Price : ",
                  //           style: TextStyle(
                  //             color: Color.fromARGB(255, 32, 32, 32),
                  //             fontFamily: defaultFontFamily,
                  //             fontSize: 16,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // );
                },
              ),
            ),
            // BoxItemFood(),
          ],
        ),
      ),
      floatingActionButton: Container(
        child: FittedBox(
          child: Stack(
            alignment: Alignment(1.4, -1.5),
            children: [
              FloatingActionButton(
                // Your actual Fab
                onPressed: () {
                  Navigator.push(
                    context,
                    ScaleRoute(
                      page: FoodOrderPage(),
                    ),
                  );
                },
                child: Icon(Icons.shopping_cart),
                backgroundColor: Colors.orange,
              ),
              Container(
                // This is your Badge
                child: Center(
                  // Here you can put whatever content you want inside your Badge
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                padding: EdgeInsets.all(8),
                constraints: BoxConstraints(minHeight: 32, minWidth: 32),
                decoration: BoxDecoration(
                  // This controls the shadow
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 5,
                      color: Colors.black.withAlpha(50),
                    )
                  ],
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.orange[900], // This would be color of the Badge
                ),
              ),
            ],
          ),
        ),
      ),
      // FloatingActionButton(
      //   onPressed: () {
      //     // Add your onPressed code here!
      //     Navigator.push(
      //       context,
      //       ScaleRoute(
      //         page: FoodOrderPage(),
      //       ),
      //     );
      //   },
      //   backgroundColor: Colors.orange,
      //   child: Stack(
      //     alignment: Alignment.topCenter,
      //     children: [
      //       const Icon(Icons.shopping_cart),
      //       Text(
      //         "1",
      //         style: TextStyle(
      //           color: Colors.black,
      //           fontSize: 15,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

class BoxItemFood extends StatelessWidget {
  BoxItemFood({
    Key key,
    this.idFood,
  }) : super(key: key);

  var idFood;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(idFood);
      },
      child: Opacity(
        opacity: 1,
        child: Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/menus/pho.png"),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Food Name : ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 32, 32, 32),
                    fontFamily: defaultFontFamily,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Calories : ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 32, 32, 32),
                    fontFamily: defaultFontFamily,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Price : ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 32, 32, 32),
                    fontFamily: defaultFontFamily,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
