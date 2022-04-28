import 'package:flutter/material.dart';
import 'package:rota/src/utils/colors.dart';
import 'package:rota/src/widgets/rota_dashboard_menu.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Image.asset("assets/images/admin/dashboard.png"),
              const SizedBox(height: 100),
              SizedBox(
                height: 500,
                child: GridView.extent(
                    primary: false,
                    padding: const EdgeInsets.all(16),
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    maxCrossAxisExtent: 200.0,
                    children: <Widget>[
                      DashBoardMenu(
                        icon: Icons.people,
                        lable: "Manage Staff",
                        onpress: () {
                          print("Manage Staff");
                        },
                      ),
                      DashBoardMenu(
                        icon: Icons.calendar_month_outlined,
                        lable: "Schedular",
                        onpress: () {
                          print("Schedular");
                        },
                      ),
                      DashBoardMenu(
                        icon: Icons.mode_edit,
                        lable: "Time Change\n     Request",
                        onpress: () {
                          print("Time Change Request");
                        },
                      ),
                      DashBoardMenu(
                        icon: Icons.person_outline,
                        lable: "Profile",
                        onpress: () {
                          print("Profile");
                        },
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
