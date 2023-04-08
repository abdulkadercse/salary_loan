import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_financing_app_ui/const/app_color.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/appTextFieldDecoration.dart';

class BillPaymentScreen extends StatefulWidget {
  const BillPaymentScreen({Key? key}) : super(key: key);

  @override
  State<BillPaymentScreen> createState() => _BillPaymentScreenState();
}

class _BillPaymentScreenState extends State<BillPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        elevation: 0,
        title: const Text(
          "Bills and Services",
          style: TextStyle(
            color: Color(0xff100D40),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
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
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0.w, top: 8.0.h, bottom: 8.0.h),
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0).w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: appTextDecoration.copyWith(
                    hintText: "Search bills & services",
                    prefixIcon: const Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.wifi,
                        color: AppColor.primaryColor,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      Text(
                        "Internet Services",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColor.primaryColor,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0.h,
              ),
              const Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.tv,
                        color: AppColor.primaryColor,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      Text(
                        "Cable Tv",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColor.primaryColor,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0.h,
              ),
              const Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.mobile_screen_share,
                        color: AppColor.primaryColor,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      Text(
                        "Mobile Recharge",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColor.primaryColor,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0.h,
              ),
              const Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.electric_bolt_outlined,
                        color: AppColor.primaryColor,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      Text(
                        "Electricity",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColor.primaryColor,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0.h,
              ),
              const Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.history_edu,
                        color: AppColor.primaryColor,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      Text(
                        "Education",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColor.primaryColor,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0.h,
              ),
              const Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.travel_explore,
                        color: AppColor.primaryColor,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      Text(
                        "Travel & Tours",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColor.primaryColor,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0.h,
              ),
              const Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.medical_information,
                        color: AppColor.primaryColor,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      Text(
                        "Medical & Dental",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColor.primaryColor,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0.h,
              ),
              const Divider(
                thickness: 2.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
