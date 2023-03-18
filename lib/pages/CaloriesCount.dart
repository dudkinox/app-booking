import 'package:flutter/material.dart';
import 'package:flutter_app/themes/constant.dart';

class CaloriesCount extends StatefulWidget {
  @override
  _CaloriesCountState createState() => _CaloriesCountState();
}

List<String> eventSelect = [
  "Sedentary (little to no exercise + work a desk job)",
  "Lightly Active (light exercise 1-2 days / week)",
  "Moderately Active (moderate exercise 3-5 days / week)",
  "Very Active (heavy exercise 6-7 days / week)",
  "Extremely Active (very heavy exercise, hard labor job, training 2x / day)",
];

class _CaloriesCountState extends State<CaloriesCount> {
  String currentEvent = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFfae3e2),
        // appBar: AppBar(
        //   backgroundColor: Color(0xFFFAFAFA),
        //   elevation: 0,
        //   title: Text(
        //     "What would you like to eat?",
        //     style: TextStyle(
        //         color: Color(0xFF3a3737),
        //         fontSize: 16,
        //         fontWeight: FontWeight.w500),
        //   ),
        //   brightness: Brightness.light,
        //   actions: <Widget>[
        //     IconButton(
        //         icon: Icon(
        //           Icons.notifications_none,
        //           color: Color(0xFF3a3737),
        //         ),
        //         onPressed: () {
        //           Navigator.push(context, ScaleRoute(page: SignInPage()));
        //         })
        //   ],
        // ),
        body: Container(
          padding: EdgeInsets.only(right: 30, left: 30),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoxShowCalories(title: "Body Mass Index (BMI)", value: "19.5"),
                BoxShowCalories(
                    title: "Basal Metabolic Rate (BMR)", value: "1282"),
                SizedBox(
                  height: 5,
                ),
                Text("Total daily energy expenditure (TDEE)"),
                SizedBox(
                  height: 5,
                ),
                currentEvent != ""
                    ? BoxShowText(
                        text: "${currentEvent} = 1987",
                      )
                    : Column(
                        children: [
                          Text("Select A Activity"),
                          SizedBox(
                            height: 5,
                          ),
                          ListTile(
                            title: const Text(
                                'Sedentary (little to no exercise + work a desk job)'),
                            leading: Radio(
                              value: eventSelect[0],
                              groupValue: currentEvent,
                              onChanged: (value) {
                                setState(() {
                                  currentEvent = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text(
                                'Lightly Active (light exercise 1-2 days / week)'),
                            leading: Radio(
                              value: eventSelect[1],
                              groupValue: currentEvent,
                              onChanged: (value) {
                                setState(() {
                                  currentEvent = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text(
                                'Moderately Active (moderate exercise 3-5 days / week)'),
                            leading: Radio(
                              value: eventSelect[2],
                              groupValue: currentEvent,
                              onChanged: (value) {
                                setState(() {
                                  currentEvent = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text(
                                'Very Active (heavy exercise 6-7 days / week)'),
                            leading: Radio(
                              value: eventSelect[3],
                              groupValue: currentEvent,
                              onChanged: (value) {
                                setState(() {
                                  currentEvent = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text(
                                'Extremely Active (very heavy exercise, hard labor job, training 2x / day)'),
                            leading: Radio(
                              value: eventSelect[4],
                              groupValue: currentEvent,
                              onChanged: (value) {
                                setState(() {
                                  currentEvent = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                currentEvent != ""
                    ? GridView.builder(
                        padding: const EdgeInsets.all(20.0),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 250,
                          childAspectRatio: 3 / 4,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
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
                          );
                        },
                      )
                    // Container(
                    //     alignment: Alignment.topCenter,
                    //     color: Colors.black,
                    //     height: 300,
                    //     child: GridView.builder(

                    //       physics: NeverScrollableScrollPhysics(),
                    //       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    //         maxCrossAxisExtent: 200,
                    //         childAspectRatio: 3 / 3.7,
                    //         crossAxisSpacing: 20,
                    //         mainAxisSpacing: 20,
                    //       ),
                    //       itemCount: 4,
                    //       itemBuilder: (context, index) {
                    //         return BoxItemFood(idFood: index);
                    //       },
                    //     ),
                    //   )
                    : SizedBox()
                // SearchWidget(),
                // PopularFoodsWidget(),
                // BestFoodWidget(),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: BottomNavBarWidget(),
      ),
    );
  }
}

class BoxShowCalories extends StatelessWidget {
  BoxShowCalories({
    Key key,
    @required this.title,
    @required this.value,
  }) : super(key: key);

  String title;
  String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 10),
              child: Text(title),
            ),
            BoxShowText(text: value),
          ],
        ),
      ),
    );
  }
}

class BoxShowText extends StatelessWidget {
  BoxShowText({
    Key key,
    @required this.text,
  }) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(text),
    );
  }
}
