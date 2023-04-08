import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/app_color.dart';
import '../../widgets/small_button.dart';
import '../Home Screen/bottom_nav/nav_bar.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.mainColor,
        body: Padding(
          padding: const EdgeInsets.all(10.0).w,
          child: Column(
            children: [
              Center(
                child: Text(
                  "Review and finish Up ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.primaryColor,
                    fontSize: 25.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0.h,
              ),
              ListTile(
                title: Text(
                  "Application Form",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.primaryColor,
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              ListTile(
                title: Text(
                  "Documents",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.primaryColor,
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              ListTile(
                title: Text(
                  "Loan Request",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.primaryColor,
                ),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                child: SmallButton(
                  buttonText: 'Submit',
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Successfully"),
                                    const Icon(Icons.close).onTap(
                                      () {
                                        finish(context);
                                      },
                                    )
                                  ],
                                ),
                                const Divider(
                                  thickness: 3.0,
                                ),
                              ],
                            ),
                            content: SizedBox(
                              height: 120.h,
                              child: Column(
                                children: [
                                  const Text(
                                    "Application Successfully Send",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.primaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0.h,
                                  ),
                                  const Text(
                                    "We will keep you posted about the status of your loan application.",
                                    style: TextStyle(
                                      color: AppColor.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            actions: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Action",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      width: 60.w,
                                      height: 37.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0).r,
                                        color: AppColor.primaryColor,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Cancel",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 99.w,
                                      height: 37.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0).r,
                                        color: AppColor.primaryColor,
                                      ),
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const NavBar()
                                              )
                                            );
                                          },
                                          child: const Text(
                                            "Save changes",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          );
                        });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
