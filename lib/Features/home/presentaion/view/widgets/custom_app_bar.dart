import 'package:booly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(right: 24, top: 60, bottom: 30, left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.kSmallLogo, height: 50),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
