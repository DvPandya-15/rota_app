import 'package:flutter/material.dart';
import 'package:rota/src/utils/colors.dart';
import 'package:rota/src/viewmodels/admin/editstaffmemberscreen_viewmodel.dart';
import 'package:rota/src/widgets/rota_button.dart';
import 'package:rota/src/widgets/rota_textformfield.dart';

class EditStaffMemberScreen extends StatefulWidget {
  const EditStaffMemberScreen({Key? key}) : super(key: key);

  @override
  State<EditStaffMemberScreen> createState() => _EditStaffMemberScreenState();
}

class _EditStaffMemberScreenState extends State<EditStaffMemberScreen> {
  EditStaffMemberScreenViewModel editStaffMemberScreenViewModel =
      EditStaffMemberScreenViewModel();

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
          "Deep Patel",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.calendar_month_outlined,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Form(
            key: editStaffMemberScreenViewModel.formKey,
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
                  controller: editStaffMemberScreenViewModel.memberName,
                  errorText: "Enter Name",
                  textFormFielLabelText: "Name",
                ),
                const SizedBox(height: 30),
                RotaTextFormField(
                  controller: editStaffMemberScreenViewModel.memberMail,
                  errorText: "Enter Email",
                  textFormFielLabelText: "Email",
                  isEmailField: true,
                ),
                const SizedBox(height: 30),
                RotaTextFormField(
                  controller: editStaffMemberScreenViewModel.memberPhone,
                  errorText: "Enter Phone",
                  textFormFielLabelText: "Phone",
                ),
                const SizedBox(height: 30),
                RotaTextFormField(
                  controller: editStaffMemberScreenViewModel.memberDesignation,
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
                  label: "UPDATE               ",
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
