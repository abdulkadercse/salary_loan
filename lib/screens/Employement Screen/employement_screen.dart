import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/appTextFieldDecoration.dart';
import '../../const/app_color.dart';
import '../../widgets/small_button.dart';

import '../Payment Screen/payment_screen.dart';

class EmployementScreen extends StatefulWidget {
  const EmployementScreen({Key? key}) : super(key: key);

  @override
  State<EmployementScreen> createState() => EmployementScreenState();
}

class EmployementScreenState extends State<EmployementScreen> {
  List<String> employmentStatus = ['Permanent', 'Part Time'];
  String initialEmploymentStatus = 'Permanent';

  DropdownButton<String> getEmploymentStatus() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String des in employmentStatus) {
      var item = DropdownMenuItem(
        value: des,
        child: Text(des),
      );
      dropDownItems.add(item);
    }
    return DropdownButton(
      items: dropDownItems,
      value: initialEmploymentStatus,
      onChanged: (value) {
        setState(() {
          initialEmploymentStatus = value!;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
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
                height: 10.0.h,
              ),
              Container(
                width: context.width(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: SizedBox(
                  height: 55,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: DropdownButtonHideUnderline(
                        child: getEmploymentStatus()),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              const Text(
                "Designation & Position ",
                style: TextStyle(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              AppTextField(
                textFieldType: TextFieldType.NUMBER,
                decoration: appTextDecoration.copyWith(
                  hintText: "Security Officer",
                ),
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Container(
                alignment: Alignment.center,
                child: SmallButton(
                  buttonText: 'Continue',
                  onPressed: () => const PaymentScreen().launch(context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
