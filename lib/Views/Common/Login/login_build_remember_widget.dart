import 'package:flutter/material.dart';
import 'package:test_project/Controllers/login_controller.dart';

import '../../../Servies/color.dart';
import '../../../Servies/constants.dart';

class LoginRememberWidget extends StatelessWidget {
  const LoginRememberWidget({super.key, required this.provider});

  final LoginProvider provider;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            activeColor: AppColor().mainColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1),
                side: BorderSide(color: AppColor().mainColor, width: 1)),
            value: provider.rememberMe,
            onChanged: (val) {
              provider.changeCheckBox1();
            }),
        Text(enUs['lbl_remember_me'].toString()),
        const Spacer(),
        Text(
          enUs["msg_forgot_password"].toString(),
        )
      ],
    );
  }
}
