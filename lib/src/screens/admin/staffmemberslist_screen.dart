import 'package:flutter/material.dart';
import 'package:rota/src/utils/colors.dart';
import 'package:rota/src/widgets/rota_member_listtile.dart';

class StaffMembersListScreen extends StatefulWidget {
  const StaffMembersListScreen({Key? key}) : super(key: key);

  @override
  State<StaffMembersListScreen> createState() => _StaffMembersListScreenState();
}

class _StaffMembersListScreenState extends State<StaffMembersListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_left_rounded,
              size: 40,
            ),
            color: AppColor.white,
            onPressed: () {},
          ),
          title: const Text(
            "Staff Members",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MemberListTile(
              onTap: () {
                print("Pressed");
              },
              userProfile: "assets/images/login.png",
              userName: "John Doe",
              userMail: "JohnDoe@gmail.com",
            );
          },
        ));
  }
}
