import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_financing_app_ui/const/app_color.dart';
import 'package:mobile_financing_app_ui/widgets/small_button.dart';
import 'package:nb_utils/nb_utils.dart';
import '../Home Screen/bottom_nav/nav_bar.dart';

class SignInSuccess extends StatefulWidget {
  const SignInSuccess({Key? key}) : super(key: key);

  @override
  State<SignInSuccess> createState() => _SignInSuccessState();
}

class _SignInSuccessState extends State<SignInSuccess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0).w,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/congratulation.png",
                  width: 80,
                ),
                SizedBox(
                  height: 30.0.h,
                ),
                Text(
                  "Congratulations!",
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0.h,
                ),
                SizedBox(
                  width: 310.w,
                  child: Text(
                    "Your account has been  created.We’re happy to have you onboard.",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: AppColor.primaryColor,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  height: 30.0.h,
                ),
                Container(
                  alignment: Alignment.center,
                  child: SmallButton(
                    buttonText: "Dashboard",
                    onPressed: () => const NavBar().launch(context),
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
