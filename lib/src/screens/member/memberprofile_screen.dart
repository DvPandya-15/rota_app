import 'package:flutter/material.dart';
import 'package:rota/src/utils/colors.dart';
import 'package:rota/src/viewmodels/member/memberprofile_viewmodel.dart';

import 'package:rota/src/widgets/rota_textformfield.dart';

class MemberProfileScreen extends StatefulWidget {
  const MemberProfileScreen({Key? key}) : super(key: key);

  @override
  State<MemberProfileScreen> createState() => _MemberProfileScreenState();
}

class _MemberProfileScreenState extends State<MemberProfileScreen> {
  MemberProfileViewModel memberProfileViewModel = MemberProfileViewModel();

  String _selectedGender = 'male';

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
          "My Profile ",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Form(
            key: memberProfileViewModel.formKey,
            child: Column(
              children: [
                const SizedBox(height: 50),
                const CircleAvatar(
                  backgroundColor: AppColor.lightBlue,
                  maxRadius: 50,
                  child: Text(
                    "D",
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 45,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                RotaTextFormField(
                  controller: memberProfileViewModel.memberName,
                  errorText: "Enter Name",
                  textFormFielLabelText: "Name",
                ),
                const SizedBox(height: 30),
                RotaTextFormField(
                  controller: memberProfileViewModel.memberMail,
                  errorText: "Enter Email",
                  textFormFielLabelText: "Email",
                  isEmailField: true,
                ),
                const SizedBox(height: 30),
                RotaTextFormField(
                  controller: memberProfileViewModel.memberPhone,
                  errorText: "Enter Phone",
                  textFormFielLabelText: "Phone",
                ),
                const SizedBox(height: 30),
                RotaTextFormField(
                  controller: memberProfileViewModel.memberDesignation,
                  errorText: "Enter Designation",
                  textFormFielLabelText: "Designation",
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Male',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                            });
                          },
                        ),
                        const Text("Male"),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Female',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                            });
                          },
                        ),
                        const Text("Female"),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Other',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                            });
                          },
                        ),
                        const Text("Other"),
                      ],
                    ),
                  ],
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
