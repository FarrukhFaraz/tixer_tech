import 'package:flutter/material.dart';
import 'package:test_project/Servies/color.dart';
import 'package:test_project/Servies/constants.dart';
import 'package:test_project/Servies/navigator_service.dart';
import 'package:test_project/Views/UI/add_family_screen.dart';

import '../Common/custom_image_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            decoration: BoxDecoration(
              color: AppColor().mainColor2,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                  child: Row(
                    children: [
                      Icon(
                        Icons.menu,
                        color: AppColor().white,
                      ),
                      const Spacer(),
                      Text(
                        enUs['lbl_my_profile'].toString(),
                        style: TextStyle(fontSize: 16, color: AppColor().white),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.settings,
                        color: AppColor().white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Material(
                  color: AppColor().white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  elevation: 2,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.04),
                    width: size.width,
                    child: Column(
                      children: [
                        SizedBox(height: size.height * 0.03),
                        SizedBox(
                          height: size.height * 0.15,
                          width: size.height * 0.15,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                imagePath: 'assets/profile.png',
                                alignment: Alignment.center,
                                radius: BorderRadius.circular(
                                    (size.height * 0.1) / 2),
                              ),
                              CircleAvatar(
                                  backgroundColor: AppColor().mainColor,
                                  radius: 15,
                                  child: Icon(
                                    Icons.edit,
                                    size: 18,
                                    color: AppColor().white,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Text(
                          enUs['lbl_mathew_adam'].toString(),
                          style: TextStyle(
                              fontSize: 17,
                              color: AppColor().black,
                              fontWeight: FontWeight.w700),
                        ),
                        // const SizedBox(height: 10),
                        Text(
                          enUs['msg_mathew_email_com'].toString(),
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColor().black.withOpacity(0.65),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Row(
                          children: [
                            const Spacer(),
                            Material(
                              elevation: 6,
                              borderRadius: BorderRadius.circular(8),
                              color: AppColor().white,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColor().white),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 8),
                                child: Column(
                                  children: [
                                    Text(
                                      enUs['lbl_23y_4m'].toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      enUs['lbl_4_0'].toString(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Material(
                              elevation: 6,
                              borderRadius: BorderRadius.circular(8),
                              color: AppColor().white,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColor().white),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: Column(
                                  children: [
                                    Text(
                                      enUs['lbl_male'].toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      enUs['lbl_birth_gender'].toString(),
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                        SizedBox(height: size.height * 0.03),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            enUs['lbl_family_members'].toString(),
                            style: TextStyle(
                                fontSize: 15,
                                color: AppColor().black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 4, ////length
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              int length = 4;
                              if (index == length - 1) {
                                return Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        NavigatorService.navPush(
                                            context, const AddFamilyScreen());
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            border: Border.all(
                                              width: 1,
                                              style: BorderStyle.solid,
                                            )),
                                        alignment: Alignment.center,
                                        child: const Icon(Icons.add),
                                      ),
                                    ),
                                    Text(
                                      'Add',
                                      style: TextStyle(
                                          color: AppColor().mainColor),
                                    )
                                  ],
                                );
                              }
                              return Container(
                                margin: const EdgeInsets.only(
                                  right: 10,
                                ),
                                height: 60,
                                child: Column(
                                  children: [
                                    CustomImageView(
                                      height: 50,
                                      imagePath: 'assets/profile.png',
                                      alignment: Alignment.center,
                                      radius: BorderRadius.circular(
                                          (size.height * 0.1) / 2),
                                    ),
                                    Text(index == 0
                                        ? 'Sister'
                                        : index == 1
                                            ? 'Father'
                                            : 'Mother')
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Past Appointments',
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColor().black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        ListView.builder(
                          padding: const EdgeInsets.only(bottom: 70),
                          shrinkWrap: true,
                          itemCount: 6,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Card(
                              margin: const EdgeInsets.only(top: 16),
                              elevation: 4,
                              color: AppColor().white,
                              child: Container(
                                color: AppColor().white,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 4),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      height: 70,
                                      imagePath: 'assets/profile.png',
                                      alignment: Alignment.center,
                                      radius: BorderRadius.circular(
                                          (size.height * 0.1) / 2),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Column(
                                          children: [
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Farrukh',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Spacer(),
                                                Text(
                                                  '\$ 70',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 3),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: AppColor()
                                                        .mainColor
                                                        .withOpacity(0.2),
                                                  ),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 6,
                                                      vertical: 2),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.favorite,
                                                        color: AppColor()
                                                            .mainColor,
                                                        size: 20,
                                                      ),
                                                      const SizedBox(width: 10),
                                                      Text(
                                                        '4.0',
                                                        style: TextStyle(
                                                            color: AppColor()
                                                                .mainColor),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 20),
                                                Text(
                                                  'Submitted',
                                                  style: TextStyle(
                                                      color: AppColor()
                                                          .mainColor2),
                                                )
                                              ],
                                            ),
                                            const SizedBox(height: 3),
                                            const Row(
                                              children: [
                                                Icon(
                                                  Icons.video_call,
                                                  size: 22,
                                                ),
                                                SizedBox(width: 6),
                                                Text(
                                                  'Video Session',
                                                )
                                              ],
                                            ),
                                            const Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Sam (Me)',
                                                ),
                                                Spacer(),
                                                Text(
                                                  'Monday, 20 Oct\n8:20pm',
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
