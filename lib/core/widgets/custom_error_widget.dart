import 'package:booly_app/core/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessege});
  final String errorMessege;
  @override
  Widget build(BuildContext context) {
    return Text(errorMessege , style: Styles.textStyle20,) ;
  }
}
