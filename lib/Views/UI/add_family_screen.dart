import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/Controllers/family_controller.dart';
import 'package:test_project/Servies/navigator_service.dart';
import 'package:test_project/Views/Common/Family/family_form_widget.dart';
import 'package:test_project/Views/Common/login_button_widget.dart';

import '../../Servies/color.dart';
import '../../Servies/constants.dart';
import '../Common/custom_image_view.dart';

class AddFamilyScreen extends StatelessWidget {
  const AddFamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text(enUs['msg_add_family_member'].toString()),
            backgroundColor: AppColor().white,
            leading: InkWell(
              onTap: () {
                NavigatorService.goBack(context);
              },
              child: const Icon(Icons.arrow_back_ios),
            )),
        body: Consumer<FamilyProvider>(builder: (context, provider, child) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.02),
                SizedBox(
                  height: size.height * 0.15,
                  width: size.height * 0.15,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: 'assets/profile.png',
                        alignment: Alignment.center,
                        radius: BorderRadius.circular((size.height * 0.1) / 2),
                      ),
                      CircleAvatar(
                          backgroundColor: AppColor().black,
                          radius: 15,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 18,
                            color: AppColor().white,
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                FamilyFormWidget(provider: provider),
                const SizedBox(height: 20),
                ButtonWidget(
                    function: provider.saveData,
                    text: enUs['lbl_add'].toString()),
                const SizedBox(
                  height: 6,
                )
              ],
            ),
          );
        }));
  }
}
