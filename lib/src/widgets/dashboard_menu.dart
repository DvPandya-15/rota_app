import 'package:flutter/material.dart';
import 'package:rota/src/utils/colors.dart';

class DashBoardMenu extends StatelessWidget {
  DashBoardMenu({Key? key, this.icon, this.lable = "", this.onpress})
      : super(key: key);

  IconData? icon;
  String lable;
  VoidCallback? onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Card(
        color: AppColor.darkBlue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                size: 40,
                color: AppColor.white,
              ),
              Text(
                lable,
                style: const TextStyle(
                  color: AppColor.white,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
