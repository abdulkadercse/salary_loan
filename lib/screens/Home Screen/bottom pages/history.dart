import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../const/app_color.dart';
import '../../Notification Tab Screen/all_notification.dart';
import '../../Notification Tab Screen/unread.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: AppColor.mainColor,
          appBar: AppBar(
            backgroundColor: AppColor.mainColor,
            title: const Text(
              "Notification",
              style: TextStyle(
                color: Color(0xff100D40),
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0).w,
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColor.primaryColor,
                  ),
                )),
            centerTitle: true,
            actions: [
              Padding(
                padding:
                    EdgeInsets.only(right: 10.0.w, top: 8.0.h, bottom: 8.0.h),
                child: Container(
                  width: 40.w,
                  height: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0).r,
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 5,
                        offset: Offset(0.0, 0.75),
                      )
                    ],
                  ),
                  child: Image.asset(
                    "assets/menu-bar.png",
                  ),
                ),
              )
            ],
            bottom: const TabBar(
              indicatorWeight: 4,
              indicatorColor: Color(0xff100D40),
              tabs: [
                Tab(
                    icon: Text(
                  "All Notification",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
                Tab(
                    icon: Text(
                  "Unread",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              AllNotification(),
              UnRead(),
            ],
          ),
        ),
      ),
    );
  }
}
