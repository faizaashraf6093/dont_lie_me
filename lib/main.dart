import 'package:dont_lie_me/app/bindings/all_bindings.dart';
import 'package:dont_lie_me/app/bindings/pages.dart';
import 'package:dont_lie_me/app/utils/constants/app_colors.dart';
import 'package:dont_lie_me/app/utils/constants/app_strings.dart';
import 'package:dont_lie_me/app/views/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllBindings(),
      getPages: GetPageList.pages,
      initialRoute: HomeScreen.route,
      debugShowCheckedModeBanner: false,
      title: AppStrings.title,
      theme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
    );
  }
}
