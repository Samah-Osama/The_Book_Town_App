import 'package:booly_app/Features/home/presentaion/view/book_details_view.dart';
import 'package:booly_app/Features/home/presentaion/view/home_view.dart';
import 'package:booly_app/Features/spalsh_feature/presentaion/views/splash_view.dart';
import 'package:booly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const TheBookTown());
  
}

class TheBookTown extends StatelessWidget {
  const TheBookTown({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeView.id: (context) => const HomeView(),
        BookDetailsView.id: (context) => const BookDetailsView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(color: kPrimaryColor),
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      home: const SplashView(),
    );
  }
}
