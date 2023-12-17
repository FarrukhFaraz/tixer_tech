import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_project/Controllers/family_controller.dart';
import 'package:test_project/Views/Common/Family/drop_down.dart';

import '../../../Servies/color.dart';
import '../../../Servies/constants.dart';
import '../custom_text_field.dart';

class FamilyFormWidget extends StatelessWidget {
  const FamilyFormWidget({super.key, required this.provider});

  final FamilyProvider provider;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: provider.formKey,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                enUs['lbl_full_name'].toString(),
                style: TextStyle(
                    fontSize: 15,
                    color: AppColor().black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 8),
            CustomTextFormField(
              controller: provider.nameController,
              hintText: enUs['lbl_anas_awaiz'].toString(),
              autofocus: false,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return enUs["name_required"];
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                enUs['lbl_relation'].toString(),
                style: TextStyle(
                    fontSize: 15,
                    color: AppColor().black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 8),
            const DropDownWidget(),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                enUs['lbl_phone_number'].toString(),
                style: TextStyle(
                    fontSize: 15,
                    color: AppColor().black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 8),
            CustomTextFormField(
              controller: provider.numberController,
              hintText: enUs['lbl_0346_4654854'].toString(),
              autofocus: false,
              obscureText: false,
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                enUs['lbl_date_of_birth'].toString(),
                style: TextStyle(
                    fontSize: 15,
                    color: AppColor().black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 8),
            CustomTextFormField(
              onTap: () {
                provider.datePicker(context);
              },
              controller: provider.dateController,
              hintText: DateFormat('dd MMM yyyy').format(DateTime.now()),
              autofocus: false,
              obscureText: false,
              readOnly: true,
              textInputAction: TextInputAction.done,
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                enUs['lbl_birth_gender'].toString(),
                style: TextStyle(
                    fontSize: 15,
                    color: AppColor().black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        provider.gender(true);
                      },
                      child: provider.male
                          ? Container(
                              height: 13,
                              width: 13,
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                                border: Border.all(
                                    width: 1, color: AppColor().mainColor),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: AppColor().mainColor),
                              ),
                            )
                          : Container(
                              height: 13,
                              width: 13,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                                border: Border.all(width: 1),
                              ),
                            ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      enUs['lbl_male'].toString(),
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColor().black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(width: 50),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        provider.gender(false);
                      },
                      child: !provider.male
                          ? Container(
                              height: 13,
                              width: 13,
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                                border: Border.all(
                                    width: 1, color: AppColor().mainColor),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: AppColor().mainColor),
                              ),
                            )
                          : Container(
                              height: 13,
                              width: 13,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                                border: Border.all(width: 1),
                              ),
                            ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      enUs['lbl_female'].toString(),
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColor().black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ));
  }
}
