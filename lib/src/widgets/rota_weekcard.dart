import 'package:flutter/material.dart';
import 'package:rota/src/utils/colors.dart';

class RotaWeekCard extends StatelessWidget {
  const RotaWeekCard({Key? key, this.weekNumber = 1}) : super(key: key);
  final int? weekNumber;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.darkBlue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "WEEK",
              style: TextStyle(color: AppColor.white, fontSize: 15),
            ),
            Text(
              weekNumber.toString(),
              style: const TextStyle(
                color: AppColor.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
