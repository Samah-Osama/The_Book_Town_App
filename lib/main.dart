import 'package:booly_app/Features/spalsh_feature/presentaion/views/splash_view.dart';
import 'package:booly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const TheBookTown());
}

class TheBookTown extends StatelessWidget {
  const TheBookTown({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: const SplashView(),
    );
  }
}
