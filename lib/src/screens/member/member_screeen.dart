import 'package:flutter/material.dart';
import 'package:rota/src/screens/member/member_requestlist_screen.dart';
import 'package:rota/src/screens/member/memberprofile_screen.dart';
import 'package:rota/src/screens/member/mytimetable_screen.dart';
import 'package:rota/src/utils/colors.dart';

class MemberScreen extends StatefulWidget {
  const MemberScreen({Key? key}) : super(key: key);

  @override
  State<MemberScreen> createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    MyTimeTableScreen(),
    MembersRequestListScreen(),
    MemberProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.darkBlue,
        unselectedItemColor: AppColor.white.withOpacity(0.60),
        selectedItemColor: AppColor.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 5,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: "My Schedule",
              backgroundColor: AppColor.darkBlue),
          BottomNavigationBarItem(
              icon: Icon(Icons.mode_edit),
              label: "Request",
              backgroundColor: AppColor.darkBlue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
              backgroundColor: AppColor.darkBlue),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
