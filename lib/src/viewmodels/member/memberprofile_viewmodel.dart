import 'package:flutter/material.dart';

class MemberProfileViewModel {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController memberName = TextEditingController();
  TextEditingController memberMail = TextEditingController();
  TextEditingController memberPhone = TextEditingController();
  TextEditingController memberDesignation = TextEditingController();
}
