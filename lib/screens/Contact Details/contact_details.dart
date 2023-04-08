import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_financing_app_ui/const/app_color.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/appTextFieldDecoration.dart';
import '../../widgets/small_button.dart';
import '../Employement Screen/employement_screen.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0.w, top: 20.0.h, right: 10.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Text(
                  "Application Form",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.primaryColor,
                    fontSize: 25.sp,
                  ),
                )),
                SizedBox(
                  height: 20.0.h,
                ),
                Text(
                  "Contact Details:",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: appTextDecoration.copyWith(
                    hintText: "Enter your email address",
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                Text(
                  "Mobile Number",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: appTextDecoration.copyWith(
                    hintText: "Enter your Mobile Number",
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                Text(
                  "Landline Number",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: appTextDecoration.copyWith(
                    hintText: "Enter your Landline Number",
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                Text(
                  "Address 1",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: appTextDecoration.copyWith(
                    hintText: "Address 1",
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                Text(
                  "Address 2",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: appTextDecoration.copyWith(
                    hintText: "Address 2",
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Container(
                  alignment: Alignment.center,
                  child: SmallButton(
                    buttonText: 'Continue',
                    onPressed: () => const EmployementScreen().launch(context),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
