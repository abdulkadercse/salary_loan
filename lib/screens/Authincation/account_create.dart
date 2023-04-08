import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_financing_app_ui/const/appTextFieldDecoration.dart';
import 'package:mobile_financing_app_ui/screens/Authincation/sifn_up_with_email.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/app_color.dart';
import '../../widgets/small_button.dart';

class AccountCreate extends StatefulWidget {
  const AccountCreate({Key? key}) : super(key: key);

  @override
  State<AccountCreate> createState() => _AccountCreateState();
}

class _AccountCreateState extends State<AccountCreate> {
  TextEditingController dateOfBirthController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.mainColor,
        appBar: AppBar(
          backgroundColor: AppColor.mainColor,
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ).onTap(() {
            Navigator.pop(context);
          }),
          title: const Text(
            "Account Create",
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Lottie.asset(
                    'assets/account-create.json',
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "First Name",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5.0.h,
                          ),
                          AppTextField(
                            textFieldType: TextFieldType.NAME,
                            decoration: appTextDecoration.copyWith(
                              hintText: "Alexander",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Last Name",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5.0.h,
                          ),
                          AppTextField(
                            textFieldType: TextFieldType.NAME,
                            decoration: appTextDecoration.copyWith(
                              hintText: "Michael",
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0.w,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Date Of Birth ",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "(YYYY/MM/DD)",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.0.h,
                    ),
                    AppTextField(
                      controller: dateOfBirthController,
                      textFieldType: TextFieldType.NAME,
                      decoration: appTextDecoration.copyWith(
                          hintText: DateTime.now().toString().substring(0, 10),
                          suffixIcon: Icon(
                            Icons.calendar_month,
                            size: 40.sp,
                          ).onTap(() async {
                            var date = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              lastDate: DateTime.now(),
                            );
                            setState(() {
                              dateOfBirthController.text =
                                  date.toString().substring(0, 10);
                            });
                          })),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: SmallButton(
                      buttonText: 'Continue',
                      onPressed: () => const SignUpWithEmail().launch(context),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
