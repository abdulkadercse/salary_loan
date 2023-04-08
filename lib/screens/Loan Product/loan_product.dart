import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/app_color.dart';
import '../../widgets/custom_clip_path.dart';
import '../Bill Payment Screen/bill_payment_screen.dart';
import '../Partnership/partnership_screen.dart';

class LoanProduct extends StatefulWidget {
  const LoanProduct({Key? key}) : super(key: key);

  @override
  State<LoanProduct> createState() => _LoanProductState();
}

class _LoanProductState extends State<LoanProduct> {
  List<String> images = [
    "assets/partnershipe.png",
    "assets/business.png",
    "assets/personal.png",
    "assets/electronicloan.png",
  ];
  List<String> title = [
    "Partnership",
    "Business Loan",
    "Personal Loan",
    "Electronic Loan ",
  ];

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
                            height: MediaQuery.of(context).size.height / 2.90,
                            child: Container(
                              color: AppColor.primaryColor,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 30.0)
                          .r,
                      child: Positioned(
                        child: Row(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  finish(context);
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                )),
                            SizedBox(
                              width: 100.0.w,
                            ),
                            Text(
                              "Loan Products",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -50.0,
                      left: 20.0,
                      right: 20.0,
                      child: Container(
                        height: 172,
                        width: 327,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0).r,
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 8), // hide shadow top
                                blurRadius: 5),
                            BoxShadow(
                              color: Colors
                                  .white, // replace with color of container
                              offset: Offset(-8, 0), // hide shadow right
                            ),
                            BoxShadow(
                              color: Colors
                                  .white, // replace with color of container
                              offset: Offset(8, 0), // hide shadow left
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0).w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Request Amount",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                    ),
                                  ),
                                  Text(
                                    "R2887.65",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0).w,
                              child: const Divider(
                                  thickness: 3.0,
                                  color: Color(
                                    0xffF2F2F2,
                                  )),
                            ),
                            SizedBox(
                              height: 5.0.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 44.w,
                                      height: 44.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10).r,
                                        color: const Color(0xff0B0657),
                                      ),
                                      child: const Icon(
                                        Icons.payment,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Payments",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: const Color(0xff100D40),
                                      ),
                                    )
                                  ],
                                ).onTap(() =>
                                    const BillPaymentScreen().launch(context)),
                                Column(
                                  children: [
                                    Container(
                                      width: 44.w,
                                      height: 44.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10).r,
                                        color: const Color(0xff0B0657),
                                      ),
                                      child: const Icon(
                                        Icons.payment,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Loan Products",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: const Color(0xff100D40),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 44.w,
                                      height: 44.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10).r,
                                          color: const Color(0xff0B0657)),
                                      child: const Icon(
                                        Icons.payment,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "BillPay",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: const Color(0xff100D40),
                                      ),
                                    )
                                  ],
                                ).onTap(() =>
                                    const BillPaymentScreen().launch(context)),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 80.0.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0).w,
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 116.01.w,
                          height: 116.01.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23.88).r,
                            color: const Color(0xffEBEBEB),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                images[index],
                                color: Colors.black,
                                width: 50,
                              ),
                              SizedBox(
                                height: 4.0.h,
                              ),
                              Text(title[index])
                            ],
                          ),
                        );
                      }),
                ).onTap(() => const PartnershipScreen().launch(context)),
                SizedBox(
                  height: 40.0.h,
                ),
              ],
            ),
          )),
    );
  }
}
