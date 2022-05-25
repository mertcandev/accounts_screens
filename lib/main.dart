import 'package:accounts_screens/pages/category6.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      splitScreenMode: false,
      builder: (child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CategoryScreen6(),
        );
      },
    );
  }
}
