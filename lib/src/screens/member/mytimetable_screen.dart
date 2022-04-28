import 'package:flutter/material.dart';
import 'package:rota/src/utils/colors.dart';
import 'package:rota/src/widgets/rota_weekcard.dart';

class MyTimeTableScreen extends StatefulWidget {
  const MyTimeTableScreen({Key? key}) : super(key: key);

  @override
  State<MyTimeTableScreen> createState() => _MyTimeTableScreenState();
}

class _MyTimeTableScreenState extends State<MyTimeTableScreen> {
  DateTime datetime = DateTime.now();
  String dropdownvalue = 'January, 2022';
  var items = [
    'January, 2022',
    'February, 2022',
    'March, 2022',
    'April, 2022',
    'May, 2022',
  ];

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
          "Schedule: Deep Patel",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: DropdownButton(
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
