import 'package:flutter/material.dart';
import 'package:flutter_app/themes/constant.dart';

class AccountCustomer extends StatefulWidget {
  @override
  _AccountCustomerState createState() => _AccountCustomerState();
}

class _AccountCustomerState extends State<AccountCustomer> {
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
                BoxShowProfile(title: "Full Name:", value: "Wee Ben"),
                BoxShowProfile(title: "Username:", value: "wee"),
                BoxShowProfile(title: "Birthday:", value: "20/07/1997"),
                BoxShowProfile(title: "Gendar:", value: "Female"),
                BoxShowProfile(title: "Weight:", value: "54"),
                BoxShowProfile(title: "Height:", value: "165"),
                BoxShowProfile(title: "Phone Number:", value: "0954646177"),
                BoxShowProfile(title: "Email:", value: "kon@gmail.com"),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: BottomNavBarWidget(),
      ),
    );
  }
}

class BoxShowProfile extends StatelessWidget {
  BoxShowProfile({
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
