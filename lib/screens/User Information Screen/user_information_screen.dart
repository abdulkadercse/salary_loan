import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_financing_app_ui/const/app_color.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/appTextFieldDecoration.dart';
import '../../widgets/small_button.dart';
import '../Contact Details/contact_details.dart';

class UserInformationScreen extends StatefulWidget {
  const UserInformationScreen({Key? key}) : super(key: key);

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  List<String> maritalStatus = ['Single', 'Married'];
  String initialMaritalStatus = 'Single';

  DropdownButton<String> getMaritalStatus() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String des in maritalStatus) {
      var item = DropdownMenuItem(
        value: des,
        child: Text(des),
      );
      dropDownItems.add(item);
    }
    return DropdownButton(
      items: dropDownItems,
      value: initialMaritalStatus,
      onChanged: (value) {
        setState(() {
          initialMaritalStatus = value!;
        });
      },
    );
  }

  TextEditingController dateOfBirthController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0).w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Application ID",
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
                              hintText: "Your application id",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.0.h,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Employer ID",
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
                              hintText: "Employer ID",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                const Text(
                  "Date of birth",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
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
                  height: 10.0.h,
                ),
                Text(
                  "Personal Info:",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                const Text(
                  "First Name",
                  style: TextStyle(
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
                    hintText: "First Name",
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                const Text(
                  "Last Name",
                  style: TextStyle(
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
                    hintText: "Last Name",
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                const Text(
                  "Middle Name",
                  style: TextStyle(
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
                    hintText: "Middle Name",
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                const Text(
                  "Marital Status",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
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
                          child: getMaritalStatus()),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                Container(
                  alignment: Alignment.center,
                  child: SmallButton(
                    buttonText: 'Continue',
                    onPressed: () => const ContactDetails().launch(context),
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
