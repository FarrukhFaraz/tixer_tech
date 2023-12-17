import 'package:flutter/material.dart';
import 'package:test_project/Controllers/login_controller.dart';

import '../../../Servies/color.dart';
import '../../../Servies/constants.dart';
import '../../../Servies/validation_functions.dart';
import '../custom_text_field.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key, required this.provider});

  final LoginProvider provider;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: provider.formKey,
        child: Column(
          children: [
            CustomTextFormField(
              controller: provider.emailController,
              hintText: enUs['lbl_abc_gmail_com'].toString(),
              autofocus: false,
              validator: (value) {
                if (value == null || (!ValidationService.isValidEmail(value))) {
                  return enUs["err_msg_please_enter_valid_email"];
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                enUs['lbl_password'].toString(),
                style: TextStyle(
                    fontSize: 15,
                    color: AppColor().black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 8),
            CustomTextFormField(
              controller: provider.passwordController,
              hintText: enUs['msg_at_least_8_characters'].toString(),
              autofocus: false,
              obscureText: true,
              validator: (value) {
                if (value == null ||
                    (!ValidationService.isValidPassword(value))) {
                  return enUs["err_msg_please_enter_valid_password"];
                }
                return null;
              },
            ),
          ],
        ));
  }
}
