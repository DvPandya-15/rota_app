import 'package:flutter/material.dart';
import 'package:rota/src/screens/login_screen.dart';
import 'package:rota/src/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/splash_logo.png"),
            const SizedBox(height: 10),
            const Text(
              "Rota Manager",
              style: TextStyle(
                color: AppColor.darkBlue,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 10),
            const CircularProgressIndicator(
              backgroundColor: AppColor.darkBlue,
              color: AppColor.white,
              strokeWidth: 3,
            )
          ],
        ),
      ),
    );
  }
}
