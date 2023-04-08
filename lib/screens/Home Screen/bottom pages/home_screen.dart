import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_financing_app_ui/const/app_color.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../widgets/custom_clip_path.dart';
import '../../Bill Payment Screen/bill_payment_screen.dart';
import '../../Loan Product/loan_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColor.mainColor,
          endDrawer: Drawer(
            child: ListView(
              children: const [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green),
                  accountName: Text("Abdul kader"),
                  accountEmail: Text("kaderhosen2002@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/abdulkader.jpg",),
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  // alignment: Alignment.bottomCenter,
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
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        child: Padding(
                      padding: EdgeInsets.only(
                          left: 20.0.w, right: 20.0.w, top: 30.0.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome Back",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                ),
                              ),
                              SizedBox(
                                height: 5.0.h,
                              ),
                              Text(
                                "Alexander Michael",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                          Builder(builder: (context) {
                            return GestureDetector(
                              onTap: () {
                                Scaffold.of(context).openEndDrawer();
                              },
                              child: const Icon(
                                Icons.menu_rounded,
                                color: Colors.white,
                              ),
                            );
                          })
                        ],
                      ),
                    )),
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
                                offset: Offset(0, 8),
                                blurRadius: 5),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-8, 0),
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(8, 0),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                color: Color(0xffF2F2F2),
                              ),
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
                                    GestureDetector(
                                      onTap: () =>
                                          const LoanProduct().launch(context),
                                      child: Container(
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
                                        color: const Color(0xff0B0657),
                                      ),
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 55.0.h,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transactions",
                            style: TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                              color: const Color(0xffFE6310),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ListTile(
                      leading: Image.asset("assets/ntt.jpg"),
                      title: const Text(
                        "NTT Inc.",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text("25 OCT 2021 12:22"),
                      trailing: Text(
                        "5.81",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    ListTile(
                      leading: Image.asset("assets/ntt.jpg"),
                      title: const Text(
                        "OpenStuck.",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text("21 OCT 2021 12:22"),
                      trailing: Text(
                        "3.81",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    ListTile(
                      leading: Image.asset("assets/ntt.jpg"),
                      title: const Text(
                        "Netflix.",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text("25 OCT 2021 12:20"),
                      trailing: Text(
                        "15.81",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
