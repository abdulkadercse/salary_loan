import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/appTextFieldDecoration.dart';
import '../../const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../widgets/custom_button.dart';
import 'forget_password_otp.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Forget Password",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0).w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset('assets/forgetpassword.json'),
            ),
            AppTextField(
              textFieldType: TextFieldType.EMAIL,
              decoration: appTextDecoration.copyWith(
                hintText: "Enter Your Email Address",
                prefixIcon: const Icon(Icons.lock),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomButton(
              onPressed: () {
                const ForgetPasswordOtp().launch(context);
              },
              buttonText: 'Send',
              buttonTextColor: Colors.white,
              buttonDecoration: buttonDecoration,
            ),
          ],
        ),
      ),
    );
  }
}
