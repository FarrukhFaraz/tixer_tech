import 'package:flutter/material.dart';

import '../../../Servies/color.dart';
import '../../../Servies/constants.dart';

class LoginRegisterWidget extends StatelessWidget {
  const LoginRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${enUs["msg_don_t_have_an_account2"]} ',
        ),
        Text(enUs["lbl_register"].toString(),
            style: TextStyle(
                color: AppColor().mainColor,
                fontSize: 15,
                fontWeight: FontWeight.w500)),
      ],
    );
  }
}
