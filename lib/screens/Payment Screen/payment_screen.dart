import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/app_color.dart';
import '../../widgets/small_button.dart';
import '../Documentation Screen/documentation_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<String> ewallet = ['G-Cash', 'E-Wallet'];
  String initialEwallet = 'G-Cash';

  DropdownButton<String> geEwallet() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String des in ewallet) {
      var item = DropdownMenuItem(
        value: des,
        child: Text(des),
      );
      dropDownItems.add(item);
    }
    return DropdownButton(
      items: dropDownItems,
      value: initialEwallet,
      onChanged: (value) {
        setState(() {
          initialEwallet = value!;
        });
      },
    );
  }

  //2nd dropDownMenu
  List<String> bankName = [
    'AB Bank',
    'Bank Asia',
    'BRAC Bank',
    'City Bank',
    'Dhaka Bank',
    'Dutch-Bangla Bank'
  ];
  String initialBank = 'AB Bank';

  DropdownButton<String> getBankName() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String des in bankName) {
      var item = DropdownMenuItem(
        value: des,
        child: Text(des),
      );
      dropDownItems.add(item);
    }
    return DropdownButton(
      items: dropDownItems,
      value: initialBank,
      onChanged: (value) {
        setState(() {
          initialBank = value!;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0).w,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Payment Options ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.primaryColor,
                      fontSize: 25.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Text(
                  "E-Wallet:",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                Container(
                  width: context.width(),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: SizedBox(
                    height: 55,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0).w,
                      child: DropdownButtonHideUnderline(child: geEwallet()),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Row(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        "Account Name:",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        decoration: const InputDecoration(
                          hintText: "Michael",
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                Row(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        "Account Number:",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        decoration: const InputDecoration(
                          hintText: "0918-98876644",
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                Text(
                  "Bank",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
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
                    height: 55.h,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0).w,
                      child: DropdownButtonHideUnderline(child: getBankName()),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Row(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        "Account Name:",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        decoration: const InputDecoration(
                          hintText: "Account Holder Name",
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                Row(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        "Account Number:",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        decoration: const InputDecoration(
                          hintText: "0918-98876644",
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.0.h,
                ),
                Container(
                  alignment: Alignment.center,
                  child: SmallButton(
                    buttonText: 'Continue',
                    onPressed: () =>
                        const DocumentationScreen().launch(context),
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
