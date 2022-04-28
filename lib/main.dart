import 'package:flutter/material.dart';
import 'package:rota/src/screens/admin/editstaffmember_screen.dart';
import 'package:rota/src/screens/member/member_screeen.dart';
import 'package:rota/src/screens/member/memberprofile_screen.dart';
import 'package:rota/src/screens/member/mytimetable_screen.dart';
import 'package:rota/src/screens/member/try.dart';
import 'package:rota/src/utils/colors.dart';
import 'package:rota/src/widgets/rota_weekcard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rota Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
            backgroundColor: AppColor.darkBlue,
            titleTextStyle: TextStyle(
              color: AppColor.white,
            )),
      ),
      home: const TryDart(),
    );
  }
}
