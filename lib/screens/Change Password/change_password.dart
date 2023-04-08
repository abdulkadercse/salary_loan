import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/appTextFieldDecoration.dart';
import '../../const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../widgets/custom_button.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        elevation: 0,
        title: const Text(
          "Password",
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
              child: Image.asset("assets/menu-bar.png"),
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
              Text(
                "Enter your old password",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              AppTextField(
                textFieldType: TextFieldType.PASSWORD,
                decoration: appTextDecoration.copyWith(
                  hintText: "Enter your old password",
                  prefixIcon: const Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Enter your new password",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              AppTextField(
                textFieldType: TextFieldType.PASSWORD,
                decoration: appTextDecoration.copyWith(
                  hintText: "Enter your new password",
                  prefixIcon: const Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Re-password new password",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              AppTextField(
                textFieldType: TextFieldType.PASSWORD,
                decoration: appTextDecoration.copyWith(
                  hintText: "Re-password new password",
                  prefixIcon: const Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              CustomButton(
                buttonText: 'Change Password',
                buttonDecoration: buttonDecoration,
                buttonTextColor: Colors.white,
                onPressed: () {
                  EasyLoading.showSuccess('Success!');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
