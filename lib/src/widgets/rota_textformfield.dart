import 'package:flutter/material.dart';
import 'package:rota/src/utils/colors.dart';

class RotaTextFormField extends StatelessWidget {
  RotaTextFormField(
      {this.controller,
      this.errorText,
      this.textFormFielLabelText,
      this.isEmailField = false});

  String? textFormFielLabelText;
  String? errorText;
  TextEditingController? controller;
  bool isEmailField;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: isEmailField
          ? (String? value) {
              String pattern =
                  r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                  r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                  r"{0,253}[a-zA-Z0-9])?)*$";
              RegExp regex = RegExp(pattern);
              if (value == null || value.isEmpty || !regex.hasMatch(value)) {
                return errorText;
              } else {
                return null;
              }
            }
          : (String? value) {
              if (value == null || value.isEmpty) {
                return errorText;
              }
            },
      decoration: InputDecoration(
        labelStyle: const TextStyle(
          color: AppColor.darkBlue,
        ),
        labelText: textFormFielLabelText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
              // color: AppColor.darkBlue,
              ),
        ),
        enabledBorder: const OutlineInputBorder(
            // borderSide: BorderSide(color: AppColor.darkBlue),
            ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
