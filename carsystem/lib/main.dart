//screenutil package usage
//abhishek patil

import 'package:carsystem/add_manage.dart';
import 'package:carsystem/new/Dashboard_page.dart';
import 'package:carsystem/static_side.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          // theme: ThemeData(primarySwatch: Colors.deepPurple),
          debugShowCheckedModeBanner: false,
          home: DashBoard(),
        );
      },
    );
  }
}
