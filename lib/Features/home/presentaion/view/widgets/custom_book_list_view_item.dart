import 'package:booly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomBooksListViewIem extends StatelessWidget {
  const CustomBooksListViewIem({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.kTestImage),
            ),
          ),
        ),
      ),
    );
  }
}
