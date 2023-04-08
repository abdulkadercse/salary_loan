import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/appTextFieldDecoration.dart';
import '../../const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../widgets/custom_button.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.mainColor,
        appBar: AppBar(
          backgroundColor: AppColor.mainColor,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0).w,
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ).onTap(() {
            Navigator.pop(context);
          }),
          title: const Text(
            "New Password",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0).w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset('assets/new-password.json',
                    height: MediaQuery.of(context).size.height / 3),
                SizedBox(
                  height: 10.h,
                ),
                AppTextField(
                  textFieldType: TextFieldType.PASSWORD,
                  decoration: appTextDecoration.copyWith(
                    hintText: "Enter Your New Password",
                    prefixIcon: const Icon(Icons.lock),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppTextField(
                  textFieldType: TextFieldType.PASSWORD,
                  decoration: appTextDecoration.copyWith(
                    hintText: "Confirm Password",
                    prefixIcon: const Icon(Icons.lock),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomButton(
                  onPressed: () {
                    EasyLoading.showSuccess('Success!');
                  },
                  buttonText: 'Continue',
                  buttonTextColor: Colors.white,
                  buttonDecoration: buttonDecoration,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
