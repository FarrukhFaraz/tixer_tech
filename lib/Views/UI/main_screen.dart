import 'package:flutter/material.dart';
import 'package:test_project/Servies/color.dart';
import 'package:test_project/Views/UI/calendar_screen.dart';
import 'package:test_project/Views/UI/home_screen.dart';
import 'package:test_project/Views/UI/notification_screen.dart';
import 'package:test_project/Views/UI/profile_screen.dart';

import '../Common/custom_image_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const CalendarScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            _screens[_currentIndex],
            Positioned(
              bottom: 12,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: size.width * 0.92,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColor().white),
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: Material(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColor().white,
                  elevation: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _currentIndex = 0;
                              });
                            },
                            child: Icon(
                              Icons.home,
                              color: _currentIndex == 0
                                  ? AppColor().mainColor
                                  : AppColor().grey,
                            ),
                          ),
                          const SizedBox(height: 2),
                          _currentIndex == 0
                              ? Container(
                                  height: 1,
                                  color: AppColor().mainColor,
                                  width: 20,
                                )
                              : const SizedBox(),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _currentIndex = 1;
                              });
                            },
                            child: Icon(
                              Icons.calendar_month,
                              color: _currentIndex == 1
                                  ? AppColor().mainColor
                                  : AppColor().grey,
                            ),
                          ),
                          const SizedBox(height: 2),
                          _currentIndex == 1
                              ? Container(
                                  height: 1,
                                  color: AppColor().mainColor,
                                  width: 20,
                                )
                              : const SizedBox(),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _currentIndex = 2;
                              });
                            },
                            child: Icon(
                              Icons.notifications,
                              color: _currentIndex == 2
                                  ? AppColor().mainColor
                                  : AppColor().grey,
                            ),
                          ),
                          const SizedBox(height: 2),
                          _currentIndex == 2
                              ? Container(
                                  height: 1,
                                  color: AppColor().mainColor,
                                  width: 20,
                                )
                              : const SizedBox(),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _currentIndex = 3;
                              });
                            },
                            child: CustomImageView(
                              height: 24,
                              imagePath: 'assets/profile.png',
                              alignment: Alignment.center,
                              radius: BorderRadius.circular(
                                  (size.height * 0.1) / 2),
                            ),
                            // child: Icon(Icons.home,
                            // color: _currentIndex==3?AppColor().mainColor:AppColor().grey,
                            // ),
                          ),
                          const SizedBox(height: 2),
                          _currentIndex == 3
                              ? Container(
                                  height: 1,
                                  color: AppColor().mainColor,
                                  width: 20,
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
