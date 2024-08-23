import 'package:booly_app/Features/home/presentaion/view/widgets/custom_app_bar.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'home_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100), child: CustomeAppBar()),
      body: HomeViewBody(),
    );
  }
}
