import 'package:flutter/material.dart';
import 'package:rota/src/screens/admin/dashboard_screen.dart';
import 'package:rota/src/screens/login_screen.dart';

class LoginScreenViewModel {
  TextEditingController emailController = TextEditingController();
  TextEditingController inviteCodeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
}
