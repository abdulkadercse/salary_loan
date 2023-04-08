import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../widgets/custom_button.dart';
import 'new_password.dart';

class ForgetPasswordOtp extends StatefulWidget {
  const ForgetPasswordOtp({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordOtp> createState() => _ForgetPasswordOtpState();
}

class _ForgetPasswordOtpState extends State<ForgetPasswordOtp> {
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
            "OTP",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0).w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Lottie.asset(
                  'assets/security.json',
                  height: MediaQuery.of(context).size.height / 2,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 70.w,
                      height: 68.h,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onSaved: (value1) {},
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "0",
                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70.w,
                      height: 68.h,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onSaved: (value1) {},
                        decoration: const InputDecoration(
                          hintText: "0",
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70.w,
                      height: 68.h,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onSaved: (value1) {},
                        decoration: const InputDecoration(
                          hintText: "0",
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70.w,
                      height: 68.h,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        // onSaved: (value1){
                        //
                        // },
                        decoration: const InputDecoration(
                          hintText: "0",
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.repeat,
                          size: 12.sp,
                          color: AppColor.primaryColor,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "Resend",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.pen,
                          size: 12.sp,
                          color: AppColor.primaryColor,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "Change Phone  Number",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                CustomButton(
                  onPressed: () {
                    const NewPassword().launch(context);
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
