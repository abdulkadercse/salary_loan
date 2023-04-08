import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/appTextFieldDecoration.dart';
import '../../const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../widgets/custom_button.dart';

class ChangePersonalProfile extends StatefulWidget {
  const ChangePersonalProfile({Key? key}) : super(key: key);

  @override
  State<ChangePersonalProfile> createState() => _ChangePersonalProfileState();
}

class _ChangePersonalProfileState extends State<ChangePersonalProfile> {
  TextEditingController dateOfBirthController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        elevation: 0,
        title: const Text(
          "Change Personal Profile",
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
                    blurRadius: 15.0,
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
              Text(
                "Name",
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
                textFieldType: TextFieldType.NAME,
                decoration: appTextDecoration.copyWith(
                  hintText: "Alexander Michael",
                  prefixIcon: const Icon(Icons.person),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Birthday",
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
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Address",
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
                textFieldType: TextFieldType.NAME,
                decoration: appTextDecoration.copyWith(
                  hintText: "2910 Makati",
                  prefixIcon: const Icon(
                    Icons.location_on_outlined,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Text(
                "Description",
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
                textFieldType: TextFieldType.ADDRESS,
                decoration: appTextDecoration,
              ),
              SizedBox(
                height: 20.0.h,
              ),
              CustomButton(
                buttonText: 'Save Email',
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
