import 'package:flutter/material.dart';
import 'package:rota/src/utils/colors.dart';

class MemberListTile extends StatelessWidget {
  MemberListTile(
      {Key? key, this.onTap, this.userName, this.userMail, this.userProfile})
      : super(key: key);

  final String? userName;
  final String? userMail;
  final String? userProfile;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(userProfile ?? ""),
        maxRadius: 30,
      ),
      title: Text(userName ?? ""),
      subtitle: Text(userMail ?? ""),
      trailing: const Icon(
        Icons.keyboard_arrow_right_rounded,
        color: AppColor.black,
      ),
      onTap: onTap,
    );
  }
}
