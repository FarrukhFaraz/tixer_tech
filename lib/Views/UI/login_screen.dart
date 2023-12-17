import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Controllers/login_controller.dart';
import '../../Servies/color.dart';
import '../../Servies/constants.dart';
import '../Common/Login/header_widget.dart';
import '../Common/Login/login_build_remember_widget.dart';
import '../Common/Login/login_form_widget.dart';
import '../Common/Login/login_register.dart';
import '../Common/login_button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leadingWidth: size.width,
          leading: const SizedBox(
            child: LoginHeaderWidget(),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: Consumer<LoginProvider>(
                    builder: (context, provider, child) {
                  return Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: size.height * 0.04),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/logo1.png',
                          height: size.height * 0.15,
                        ),
                      ),
                      SizedBox(height: size.height * 0.04),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          enUs['msg_login_to_your_account'].toString(),
                          style: TextStyle(
                              fontSize: 18,
                              color: AppColor().black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: size.height * 0.04),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          enUs['lbl_email'].toString(),
                          style: TextStyle(
                              fontSize: 15,
                              color: AppColor().black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 8),
                      LoginFormWidget(provider: provider),
                      const SizedBox(height: 12),
                      LoginRememberWidget(provider: provider),
                      const SizedBox(height: 20),
                      ButtonWidget(
                        function: (){
                          provider.login(context);
                        },
                        text: enUs['lbl_login'].toString(),
                      ),
                    ],
                  );
                }),
              ),
            ),
            const LoginRegisterWidget(),
            const SizedBox(
              height: 6,
            )
          ],
        ));
  }
}
