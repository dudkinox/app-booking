import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/common/button.dart';
import 'package:flutter_app/themes/constant.dart';
import 'package:flutter_app/widgets/ListDataDropdown.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class AccountCustomer extends StatefulWidget {
  @override
  _AccountCustomerState createState() => _AccountCustomerState();
}

class _AccountCustomerState extends State<AccountCustomer> {
  String currentEvent = "";
  bool edit = false;
  String sex = "Male";

  TextEditingController fullname = new TextEditingController();
  TextEditingController username = new TextEditingController();
  TextEditingController birthday = new TextEditingController();
  TextEditingController gender = new TextEditingController();
  TextEditingController weight = new TextEditingController();
  TextEditingController height = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController email = new TextEditingController();

  void getAccountData() async {
    // fullname.text = ;
    // username.text =
    // birthday.text =
    //   gender.text =
    //   weight.text =
    //   height.text =
    //    phone.text =
    //    email.text =
  }

  @override
  void initState() {
    getAccountData();
    super.initState();
  }

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          edit = true;
                        });
                      },
                      child: Icon(Icons.edit),
                    ),
                  ],
                ),
                TextFieldWidget(fullname, "Full name", edit, "Text"),
                TextFieldWidget(username, "Username", edit, "Text"),
                GestureDetector(
                  onTap: edit
                      ? () {
                          DatePicker.showDatePicker(context,
                              showTitleActions: true,
                              //minTime: DateTime(2018, 3, 5),
                              //maxTime: DateTime(2019, 6, 7),
                              theme: DatePickerTheme(
                                  headerColor:
                                      Color.fromARGB(255, 225, 139, 59),
                                  backgroundColor:
                                      Color.fromARGB(255, 251, 246, 227),
                                  itemStyle: TextStyle(
                                      color: Color.fromARGB(255, 11, 11, 11),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                  doneStyle: TextStyle(
                                      color: Color.fromARGB(255, 12, 12, 12),
                                      fontSize: 16)), onConfirm: (date) {
                            var day = date.toString().split(" ");
                            birthday.text = day[0];
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.en);
                        }
                      : null,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextField(
                      enabled: false,
                      showCursor: true,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 4.5, horizontal: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF2F3F5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    padding: EdgeInsets.only(left: 15),
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
                      items: genderList.map(
                        (val) {
                          return DropdownMenuItem(
                            value: val,
                            child: Text(val),
                          );
                        },
                      ).toList(),
                      value: sex,
                      onChanged: edit
                          ? (String value) {
                              setState(() {
                                sex = value;
                              });
                            }
                          : null,
                    ),
                  ),
                ),
                TextFieldWidget(weight, "Weight", edit, "Number"),
                TextFieldWidget(height, "Height", edit, "Number"),
                TextFieldWidget(phone, "Phone Number", edit, "Number"),
                TextFieldWidget(email, "Email", edit, "Email"),
                edit
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: ButtonKYP(
                                  height: 40,
                                  text: "Cancel",
                                  process: () {
                                    setState(() {
                                      edit = false;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: ButtonKYP(
                                  text: "Save",
                                  process: () {
                                    setState(() {
                                      edit = false;
                                    });
                                  },
                                  height: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: BottomNavBarWidget(),
      ),
    );
  }

  Widget TextFieldWidget(TextEditingController controller, String title,
      bool edit, String typeModeInput) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        enabled: edit,
        showCursor: true,
        keyboardType: typeModeInput == "Text"
            ? TextInputType.text
            : typeModeInput == "Number"
                ? TextInputType.number
                : TextInputType.emailAddress,
        inputFormatters: typeModeInput == "Number"
            ? [
                FilteringTextInputFormatter.allow(
                  RegExp(r'[0-9]'),
                ),
              ]
            : [],
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 4.5, horizontal: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          fillColor: Color(0xFFF2F3F5),
          hintStyle: TextStyle(
              color: Color(0xFF666666),
              fontFamily: defaultFontFamily,
              fontSize: defaultFontSize),
          hintText: title,
          labelText: title,
        ),
        controller: controller,
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
