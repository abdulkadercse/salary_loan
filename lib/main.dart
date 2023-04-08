import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_financing_app_ui/screens/Splash%20Screen/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Salary Load',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.ibmPlexSansTextTheme(
            Theme.of(context).textTheme.apply(),
          ),
        ),
        home: const SplashScreen(),
        builder: EasyLoading.init(),
      );
    });
  }
}
