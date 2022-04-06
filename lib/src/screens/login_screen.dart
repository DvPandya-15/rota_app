import 'package:flutter/material.dart';
import 'package:rota/src/screens/admin/dashboard_screen.dart';
import 'package:rota/src/utils/colors.dart';
import 'package:rota/src/viewmodels/loginscreen_viewmodel.dart';
import 'package:rota/src/widgets/rota_button.dart';
import 'package:rota/src/widgets/rota_textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginScreenViewModel loginScreenViewModel = LoginScreenViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Form(
            key: loginScreenViewModel.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 150),
                Image.asset("assets/images/login.png"),
                const SizedBox(height: 50),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: AppColor.darkBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                RotaTextFormField(
                  controller: loginScreenViewModel.emailController,
                  errorText: "Enter valid Email!",
                  textFormFielLabelText: "Email",
                  isEmailField: true,
                ),
                const SizedBox(height: 30),
                RotaTextFormField(
                  controller: loginScreenViewModel.inviteCodeController,
                  errorText: "Invalid Invite Code!",
                  textFormFielLabelText: "Invite Code",
                ),
                const SizedBox(height: 30),
                RotaButton(
                  label: "LOGIN",
                  onpress: () {
                    if (!loginScreenViewModel.formKey.currentState!
                        .validate()) {
                      return;
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashBoardScreen()),
                      );
                    }
                  },
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
