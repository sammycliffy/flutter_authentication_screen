import 'package:flutter/material.dart';
import 'package:flutter_assesment/utils/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/onboarding_screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
            theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                textTheme: TextTheme(
                    titleLarge: GoogleFonts.dmSans(
                        color: AppColors.textDark,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w500),
                    bodySmall: GoogleFonts.dmSans(
                        color: AppColors.textDark,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500))),
            home: const Splashscreen());
      },
    );
  }
}
