import 'package:flutter/material.dart';
import 'package:test_project/Views/Common/login_button_widget.dart';

import '../../Servies/color.dart';
import '../Common/custom_image_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          decoration: BoxDecoration(
            color: AppColor().mainColor2,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.menu,
                        color: AppColor().white,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Hey, Farrukh',
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColor().white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Wanna Book appointment?',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColor().white,
                          ),
                        )),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    ButtonWidget(function: () {}, text: 'Book Appointment'),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Material(
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
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'You have an upcoming appointment!!',
                            )),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            CustomImageView(
                              height: 50,
                              imagePath: 'assets/profile.png',
                              alignment: Alignment.center,
                              radius: BorderRadius.circular(
                                  (size.height * 0.1) / 2),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                                child: Text(
                              'Dr. Emma',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColor().black,
                                  fontWeight: FontWeight.w500),
                            )),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 1, color: AppColor().mainColor)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              child: Text(
                                'Attend Now',
                                style: TextStyle(color: AppColor().mainColor),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: AppColor().mainColor.withOpacity(0.2)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    size: 20,
                                    color: AppColor().mainColor,
                                  ),
                                  const Text(' Monday, May 12')
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.watch_later_outlined,
                                    size: 20,
                                    color: AppColor().mainColor,
                                  ),
                                  const Text(' 11:00 - 12:00 Am')
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Health Articles',
                              style: TextStyle(color: AppColor().black),
                            ),
                            const Text(
                              'See All',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.03),
                        SizedBox(
                          height: 95,
                          child: ListView.builder(
                            itemCount: 4,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: size.width * 0.7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: AppColor()
                                          .mainColor
                                          .withOpacity(0.15)),
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(120)),
                                              color: AppColor()
                                                  .mainColor
                                                  .withOpacity(0.5)),
                                          width: size.width * 0.6,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(120),
                                                bottomLeft: Radius.circular(80),
                                              ),
                                              color: AppColor()
                                                  .mainColor
                                                  .withOpacity(0.7)),
                                          height: 60,
                                          width: size.width * 0.15,
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topCenter,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '02 Jul 2022',
                                                  style: TextStyle(
                                                      color: AppColor().white),
                                                ),
                                                Icon(
                                                    Icons
                                                        .bookmark_border_outlined,
                                                    color: AppColor().white)
                                              ],
                                            ),
                                            SizedBox(
                                                height: size.height * 0.02),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'COVID- 19 Vaccine',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColor().white),
                                                ),
                                                Text(
                                                  'Official public service announcement on coronavirus from the world health',
                                                  maxLines: 3,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: AppColor().white),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
