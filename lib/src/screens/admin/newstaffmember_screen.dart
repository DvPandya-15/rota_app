import 'package:flutter/material.dart';
import 'package:rota/src/utils/colors.dart';
import 'package:rota/src/viewmodels/admin/newstaffmemberscreen_viewmodel.dart';
import 'package:rota/src/widgets/rota_button.dart';
import 'package:rota/src/widgets/rota_textformfield.dart';

class NewStaffMemberScreen extends StatefulWidget {
  const NewStaffMemberScreen({Key? key}) : super(key: key);

  @override
  State<NewStaffMemberScreen> createState() => _NewStaffMemberScreenState();
}

class _NewStaffMemberScreenState extends State<NewStaffMemberScreen> {
  NewStaffMemberScreenViewModel newStaffMemberScreenViewModel =
      NewStaffMemberScreenViewModel();

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
          "New Member",
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
            key: newStaffMemberScreenViewModel.formKey,
            child: Column(
              children: [
                const SizedBox(height: 50),
                CircleAvatar(
                  backgroundColor: AppColor.lightBlue,
                  maxRadius: 50,
                ),
                const SizedBox(height: 30),
                RotaTextFormField(
                  controller: newStaffMemberScreenViewModel.memberName,
                  errorText: "Enter Name",
                  textFormFielLabelText: "Name",
                ),
                const SizedBox(height: 30),
                RotaTextFormField(
                  controller: newStaffMemberScreenViewModel.memberMail,
                  errorText: "Enter Email",
                  textFormFielLabelText: "Email",
                  isEmailField: true,
                ),
                const SizedBox(height: 30),
                RotaTextFormField(
                  controller: newStaffMemberScreenViewModel.memberPhone,
                  errorText: "Enter Phone",
                  textFormFielLabelText: "Phone",
                ),
                const SizedBox(height: 30),
                RotaTextFormField(
                  controller: newStaffMemberScreenViewModel.memberDesignation,
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
                        Text("Male"),
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
                        Text("Female"),
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
                        Text("Other"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                RotaButton(
                  label: "SUBMIT",
                  onpress: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
