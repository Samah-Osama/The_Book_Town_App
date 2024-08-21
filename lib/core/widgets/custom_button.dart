import 'package:booly_app/core/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor,
    this.shape,
    required this.text,
    this.textcolor,
    this.onPressed,
  });
  @override
  final Color? backgroundColor;
  final OutlinedBorder? shape;
  final String text;
  final Color? textcolor;

  final void Function()? onPressed;
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 150,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor, shape: shape),
          onPressed: () {},
          child: Text(
            text,
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.bold,
              color: textcolor,
            ),
          )),
    );
  }
}
