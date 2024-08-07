import 'package:booly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SpalshViewBody extends StatelessWidget {
  const SpalshViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(AssetsData.logo),
    );
  }
}
