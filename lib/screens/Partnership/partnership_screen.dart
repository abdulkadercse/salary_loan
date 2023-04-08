import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_financing_app_ui/const/app_color.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/appTextFieldDecoration.dart';
import '../Request Loan Amount/request_loan_amount.dart';

class PartnershipScreen extends StatefulWidget {
  const PartnershipScreen({Key? key}) : super(key: key);

  @override
  State<PartnershipScreen> createState() => _PartnershipScreenState();
}

class _PartnershipScreenState extends State<PartnershipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        elevation: 0,
        title: const Text(
          "Partnership",
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
                    blurRadius: 5,
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
          padding: const EdgeInsets.all(20.0).h,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: appTextDecoration.copyWith(
                    hintText: "Search ID or Name",
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                width: double.infinity,
                height: 130.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0).r,
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0).w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/ntt.jpg",
                        width: 70.w,
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "NTT Inc.",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(height: 3.0.h),
                          const Text("Registered Since , 23 Nov 2021 "),
                          SizedBox(height: 15.0.h),
                          Row(
                            children: [
                              Container(
                                width: 80.w,
                                height: 34.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0).r,
                                  color: AppColor.primaryColor,
                                ),
                                child: const Center(
                                    child: Text(
                                  "Request Loan",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                  ),
                                )),
                              ).onTap(() {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text("Partner ID"),
                                                const Icon(Icons.close)
                                                    .onTap(() {
                                                  finish(context);
                                                }),
                                              ],
                                            ),
                                            const Divider(
                                              thickness: 3.0,
                                            ),
                                          ],
                                        ),
                                        content: AppTextField(
                                          textFieldType: TextFieldType.NUMBER,
                                          decoration: const InputDecoration(
                                            hintText: "XXXXXXXXXXXXXXX",
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                          ),
                                        ),
                                        actions: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.all(8.0).w,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  "Action",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Container(
                                                  width: 73.w,
                                                  height: 37.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                                2.0)
                                                            .r,
                                                    color:
                                                        AppColor.primaryColor,
                                                  ),
                                                  child: const Center(
                                                      child: Text(
                                                    "Continue",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  )).onTap(() =>
                                                      const RequestLoanAmount()
                                                          .launch(context)),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      );
                                    });
                              }),
                              SizedBox(width: 10.0.h),
                              Container(
                                width: 80.w,
                                height: 34.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0).r,
                                  color: AppColor.primaryColor,
                                ),
                                child: Center(
                                    child: Text(
                                  "Quote",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11.sp,
                                  ),
                                )),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Container(
                width: double.infinity,
                height: 130.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0).r,
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0).w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/ntt.jpg",
                        width: 70.w,
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "NTT Inc.",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(
                            height: 3.0.h,
                          ),
                          const Text("Registered Since , 23 Nov 2021 "),
                          SizedBox(
                            height: 15.0.h,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 80.w,
                                height: 34.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0).r,
                                  color: AppColor.primaryColor,
                                ),
                                child: Center(
                                    child: Text(
                                  "Request Loan",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11.sp,
                                  ),
                                )),
                              ).onTap(() {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text("Partner ID"),
                                                const Icon(Icons.close)
                                                    .onTap(() {
                                                  finish(context);
                                                })
                                              ],
                                            ),
                                            const Divider(
                                              thickness: 3.0,
                                            ),
                                          ],
                                        ),
                                        content: AppTextField(
                                          textFieldType: TextFieldType.NUMBER,
                                          decoration: const InputDecoration(
                                            hintText: "XXXXXXXXXXXXXXX",
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                          ),
                                        ),
                                        actions: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  "Action",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Container(
                                                  width: 73.w,
                                                  height: 37.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                                12.0)
                                                            .r,
                                                    color:
                                                        AppColor.primaryColor,
                                                  ),
                                                  child: const Center(
                                                      child: Text(
                                                    "Continue",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )).onTap(() =>
                                                      const RequestLoanAmount()
                                                          .launch(context)),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      );
                                    });
                              }),
                              SizedBox(
                                width: 10.0.h,
                              ),
                              Container(
                                width: 80.w,
                                height: 34.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0).r,
                                  color: AppColor.primaryColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Quote",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Container(
                width: double.infinity,
                height: 130.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0).r,
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0).w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/ntt.jpg",
                        width: 70.w,
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "NTT Inc.",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(height: 3.0.h),
                          const Text("Registered Since , 23 Nov 2021 "),
                          SizedBox(height: 15.0.h),
                          Row(
                            children: [
                              Container(
                                width: 80.w,
                                height: 34.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0).r,
                                  color: AppColor.primaryColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Request Loan",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                ),
                              ).onTap(() {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text("Partner ID"),
                                                const Icon(Icons.close)
                                                    .onTap(() {
                                                  finish(context);
                                                })
                                              ],
                                            ),
                                            const Divider(
                                              thickness: 3.0,
                                            ),
                                          ],
                                        ),
                                        content: AppTextField(
                                          textFieldType: TextFieldType.NUMBER,
                                          decoration: const InputDecoration(
                                            hintText: "XXXXXXXXXXXXXXX",
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                          ),
                                        ),
                                        actions: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  "Action",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Container(
                                                  width: 73.w,
                                                  height: 37.h,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                                  12.0)
                                                              .r,
                                                      color: AppColor
                                                          .primaryColor),
                                                  child: const Center(
                                                    child: Text(
                                                      "Continue",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ).onTap(() =>
                                                      const RequestLoanAmount()
                                                          .launch(context)),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      );
                                    });
                              }),
                              SizedBox(
                                width: 10.0.h,
                              ),
                              Container(
                                width: 80.w,
                                height: 34.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0).r,
                                  color: AppColor.primaryColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Quote",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Container(
                width: double.infinity,
                height: 130.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0).r,
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0).w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/ntt.jpg",
                        width: 70.w,
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "NTT Inc.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.sp),
                          ),
                          SizedBox(
                            height: 3.0.h,
                          ),
                          const Text("Registered Since , 23 Nov 2021 "),
                          SizedBox(
                            height: 15.0.h,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 80.w,
                                height: 34.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0).r,
                                  color: AppColor.primaryColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Request Loan",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                ),
                              ).onTap(() {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text("Partner ID"),
                                                const Icon(Icons.close)
                                                    .onTap(() {
                                                  finish(context);
                                                })
                                              ],
                                            ),
                                            const Divider(
                                              thickness: 3.0,
                                            ),
                                          ],
                                        ),
                                        content: AppTextField(
                                          textFieldType: TextFieldType.NUMBER,
                                          decoration: const InputDecoration(
                                            hintText: "XXXXXXXXXXXXXXX",
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                          ),
                                        ),
                                        actions: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.all(8.0).w,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  "Action",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Container(
                                                  width: 73.w,
                                                  height: 37.h,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                                  12.0)
                                                              .r,
                                                      color: AppColor
                                                          .primaryColor),
                                                  child: const Center(
                                                    child: Text(
                                                      "Continue",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ).onTap(() => const RequestLoanAmount().launch(context),),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      );
                                    });
                              }),
                              SizedBox(
                                width: 10.0.h,
                              ),
                              Container(
                                width: 80.w,
                                height: 34.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0).r,
                                  color: AppColor.primaryColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Quote",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
