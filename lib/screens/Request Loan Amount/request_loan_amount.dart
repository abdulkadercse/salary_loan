import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_clip_path.dart';
import '../User Information Screen/user_information_screen.dart';

class RequestLoanAmount extends StatefulWidget {
  const RequestLoanAmount({Key? key}) : super(key: key);

  @override
  State<RequestLoanAmount> createState() => _RequestLoanAmountState();
}

class _RequestLoanAmountState extends State<RequestLoanAmount> {
  double _currentSliderValue = 40;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.mainColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: ClipPath(
                      clipper: ClipPathClass(),
                      child: SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height / 2,
                          child: Container(
                            color: AppColor.primaryColor,
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0.w, right: 20.0.w, top: 10.0.h),
                    child: Positioned(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                finish(context);
                              },
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                          Text(
                            "Loan Products",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                          Container(
                            width: 40.w,
                            height: 40.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0).r,
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5,
                                  offset: Offset(0.0, 0.75),
                                )
                              ],
                            ),
                            child: Image.asset(
                              "assets/menu-bar.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 60,
                      left: 20,
                      right: 20,
                      child: Container(
                        height: 128.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0).r,
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0).w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 76.w,
                                height: 28.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10).r,
                                  color: AppColor.primaryColor,
                                ),
                                child: const Center(
                                    child: Text(
                                  "Calculated",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Request Amount:"),
                                  SizedBox(
                                    height: 5.0.h,
                                  ),
                                  const Text("Interest Fee:"),
                                  SizedBox(
                                    height: 5.0.h,
                                  ),
                                  const Text("Service Fee:"),
                                  SizedBox(
                                    height: 5.0.h,
                                  ),
                                  const Text(
                                    "Total:",
                                    style: TextStyle(
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 5.0.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("5000,00"),
                                  SizedBox(
                                    height: 5.0.h,
                                  ),
                                  const Text("0.00"),
                                  SizedBox(
                                    height: 5.0.h,
                                  ),
                                  const Text("5.00"),
                                  SizedBox(
                                    height: 5.0.h,
                                  ),
                                  const Text(
                                    "4.500,00",
                                    style: TextStyle(
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
                  Positioned(
                    bottom: -50,
                    left: 20.0,
                    right: 20.0,
                    child: Container(
                        height: 164.h,
                        width: 327.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0).r,
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 8),
                                blurRadius: 5),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-8, 0), // hide shadow right
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(8, 0),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0).w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Set the nominal needs",
                                style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15.0.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 32.w,
                                    width: 32.w,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(20.0).r,
                                      color: AppColor.primaryColor,
                                    ),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "5000",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32.sp,
                                    ),
                                  ),
                                  Container(
                                    height: 32.w,
                                    width: 32.w,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(20.0).r,
                                      color: AppColor.primaryColor,
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0.h,
                              ),
                              Slider(
                                  activeColor: AppColor.primaryColor,
                                  inactiveColor: Colors.grey,
                                  value: _currentSliderValue,
                                  max: 100,
                                  divisions: 5,
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue = value;
                                    });
                                  }),
                            ],
                          ),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 80.0.h,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0).w,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("500"),
                        const Text("1000"),
                        Container(
                          width: 98.w,
                          height: 48.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0).r,
                            color: AppColor.primaryColor,
                          ),
                          child: const Center(
                              child: Text(
                            "5000",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("500"),
                        const Text("1000"),
                        Container(
                          width: 98.w,
                          height: 48.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0).r,
                              color: AppColor.primaryColor),
                          child: const Center(
                              child: Text(
                            "5000",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("500"),
                        const Text("1000"),
                        Container(
                          width: 98.w,
                          height: 48.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0).r,
                            color: AppColor.primaryColor,
                          ),
                          child: const Center(
                              child: Text(
                            "5000",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    CustomButton(
                      buttonText: 'Proceed',
                      buttonDecoration: buttonDecoration,
                      buttonTextColor: Colors.white,
                      onPressed: () =>
                          const UserInformationScreen().launch(context),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Center(
                        child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    )).onTap(() => finish(context)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
