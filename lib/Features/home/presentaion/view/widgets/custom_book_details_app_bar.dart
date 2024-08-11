import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 32),
      child: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              size: 35,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
