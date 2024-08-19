import 'package:booly_app/Features/home/presentaion/view/book_details_view.dart';
import 'package:booly_app/constant.dart';
import 'package:booly_app/core/styles.dart';
import 'package:flutter/material.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 30),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor.withOpacity(1)),
            onPressed: () {
              Navigator.pushNamed(context, BookDetailsView.id);
            },
            child: Text('More Details',
                style: Styles.textStyle16.copyWith(color: Colors.white))));
  }
}
