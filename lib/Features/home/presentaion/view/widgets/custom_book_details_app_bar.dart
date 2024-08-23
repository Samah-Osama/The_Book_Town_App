import 'package:booly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: AppBar(
        leading: Image.asset(AssetsData.kSmallLogo, height: 50),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                size: 35,
              )),
        ],
      ),
    );
  }
}
