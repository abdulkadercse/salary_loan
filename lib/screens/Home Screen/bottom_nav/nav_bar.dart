import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_financing_app_ui/screens/Home%20Screen/bottom%20pages/history.dart';
import 'package:mobile_financing_app_ui/screens/Home%20Screen/bottom%20pages/profile.dart';
import 'package:mobile_financing_app_ui/screens/Home%20Screen/bottom%20pages/reports.dart';

import '../../../const/app_color.dart';
import '../bottom pages/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  List pages = [
    const HomeScreen(),
    const History(),
    const Report(),
    const Profile(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: AppColor.primaryColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.home_max_outlined,
                    color: AppColor.primaryColor,
                  )),
              label: "Home",
              backgroundColor: AppColor.primaryColor),
          BottomNavigationBarItem(
            icon: Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5).r,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.history,
                  color: AppColor.primaryColor,
                )),
            label: "History",
          ),
          BottomNavigationBarItem(
              icon: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5).r,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.report,
                    color: AppColor.primaryColor,
                  )),
              label: "Report"),
          BottomNavigationBarItem(
              icon: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5).r,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.person,
                    color: AppColor.primaryColor,
                  )),
              label: "Profile"),
        ],
      ),
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
    );
  }
}
