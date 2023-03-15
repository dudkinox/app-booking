import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  BottomNavBarWidget({
    Key key,
    @required this.selectIndex,
  }) : super(key: key);

  int selectIndex;
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        widget.selectIndex = index;
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.table_bar),
          label: 'Booking',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calculate_rounded),
          label: 'Calory',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
      currentIndex: widget.selectIndex,
      selectedItemColor: Color(0xFFfd5352),
      onTap: _onItemTapped,
    );
  }
}
