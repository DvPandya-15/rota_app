import 'package:flutter/material.dart';
import 'package:rota/src/utils/colors.dart';

class RotaAppBar extends StatelessWidget {
  RotaAppBar({
    Key? key,
    this.title,
    this.onPressed,
    this.isEditStaffMember,
    this.isMyTimetable,
  }) : super(key: key);

  final String? title;
  VoidCallback? onPressed;
  bool? isEditStaffMember;
  bool? isMyTimetable;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.keyboard_arrow_left_rounded,
          size: 40,
        ),
        color: AppColor.white,
        onPressed: () {},
      ),
      title: Text(
        title ?? "",
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
      actions: [
        // isEditStaffMember ? Icon(Icons.calendar_month_outlined) : Container(),
        // isMyTimetable ? Icon(Icons.calendar_month_outlined) : Container(),
      ],
    );
  }
}
