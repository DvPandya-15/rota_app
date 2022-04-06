import 'package:flutter/material.dart';
import 'package:rota/src/utils/colors.dart';

class RotaButton extends StatelessWidget {
  RotaButton({Key? key, this.label = "", this.onpress}) : super(key: key);
  String label;
  VoidCallback? onpress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColor.lightBlue,
      ),
      onPressed: onpress,
      child: Container(
        width: double.infinity,
        height: 40,
        alignment: Alignment.center,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            color: AppColor.white,
          ),
        ),
      ),
    );
  }
}
