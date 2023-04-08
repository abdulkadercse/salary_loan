import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../const/app_color.dart';
import '../../../widgets/custom_clip_path.dart';
import '../../Change Email Screen/change_email.dart';
import '../../Change Password/change_password.dart';
import '../../Change Personal/change_personal.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.mainColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          height: MediaQuery.of(context).size.height / 2.60,
                          child: Container(
                            color: AppColor.primaryColor,
                          )),
                    ),
                  ),
                  Positioned(
                      left: 20,
                      right: 20,
                      top: 35,
                      child: Container(
                        width: 327.w,
                        height: 80.0.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0).r,
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0).w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 30.0.r,
                                backgroundColor: AppColor.primaryColor,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Alexander Michael",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp,
                                      color: AppColor.primaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0.h,
                                  ),
                                  Text(
                                    "0896 2102 7821",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColor.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 92.w,
                                height: 36.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32).r,
                                  border: Border.all(
                                    color: AppColor.primaryColor,
                                    width: 1,
                                  ),
                                ),
                                child: Center(
                                    child: Text(
                                  "Guest Admin",
                                  style: TextStyle(
                                    color: AppColor.primaryColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              )
                            ],
                          ),
                        ),
                      )),
                  Positioned(
                    left: 20,
                    right: 20,
                    bottom: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 155.w,
                          height: 72.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10).r,
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 40.w,
                                height: 40.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20).r,
                                  color: AppColor.primaryColor,
                                ),
                                child: const Icon(
                                  Icons.document_scanner,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Scan QR",
                                style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 155.w,
                          height: 72.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10).r,
                              color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 40.w,
                                height: 40.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20).r,
                                  color: AppColor.primaryColor,
                                ),
                                child: const Icon(
                                  Icons.document_scanner,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "My QR",
                                style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0).w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 327.w,
                      height: 72.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).r,
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
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0).r,
                                    color: AppColor.primaryColor,
                                  ),
                                  child: const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.0.h,
                                ),
                                Text(
                                  "My Loan",
                                  style: TextStyle(
                                    color: AppColor.primaryColor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: AppColor.primaryColor,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 327.w,
                      height: 72.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).r,
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
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0).r,
                                    color: AppColor.primaryColor,
                                  ),
                                  child: const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.0.h,
                                ),
                                Text(
                                  "Change Personal Profile",
                                  style: TextStyle(
                                    color: AppColor.primaryColor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: AppColor.primaryColor,
                            )
                          ],
                        ),
                      ),
                    ).onTap(
                        () => const ChangePersonalProfile().launch(context)),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 327.w,
                      height: 72.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).r,
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
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0).r,
                                    color: AppColor.primaryColor,
                                  ),
                                  child: const Icon(
                                    Icons.email,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.0.h,
                                ),
                                Text(
                                  "Change Email Address",
                                  style: TextStyle(
                                    color: AppColor.primaryColor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: AppColor.primaryColor,
                            )
                          ],
                        ),
                      ),
                    ).onTap(() => const ChangeEmail().launch(context)),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 327.w,
                      height: 72.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).r,
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
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0).r,
                                    color: AppColor.primaryColor,
                                  ),
                                  child: const Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.0.h,
                                ),
                                Text(
                                  "Change Password",
                                  style: TextStyle(
                                    color: AppColor.primaryColor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: AppColor.primaryColor,
                            )
                          ],
                        ),
                      ),
                    ).onTap(() => const ChangePassword().launch(context)),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Text(
                      "More Settings",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.primaryColor,
                        fontSize: 18.0.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      width: 327.w,
                      height: 72.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).r,
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
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0).r,
                                    color: AppColor.primaryColor,
                                  ),
                                  child: const Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.0.h,
                                ),
                                Text(
                                  "Account Security",
                                  style: TextStyle(
                                    color: AppColor.primaryColor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: AppColor.primaryColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
