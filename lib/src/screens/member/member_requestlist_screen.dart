import 'package:flutter/material.dart';

class MembersRequestListScreen extends StatefulWidget {
  const MembersRequestListScreen({Key? key}) : super(key: key);

  @override
  State<MembersRequestListScreen> createState() =>
      _MembersRequestListScreenState();
}

class _MembersRequestListScreenState extends State<MembersRequestListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("MembersRequestListScreen")),
    );
  }
}
