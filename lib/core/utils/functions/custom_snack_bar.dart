import 'package:booly_app/constant.dart';
import 'package:booly_app/core/styles.dart';
import 'package:flutter/material.dart';

void customSnackBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: kPrimaryColor,
      content: Text(
        text,
        style: Styles.textStyle16.copyWith(color: Colors.white),
      ),
    ),
  );
}