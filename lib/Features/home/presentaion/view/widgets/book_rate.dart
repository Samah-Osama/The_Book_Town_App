import 'package:booly_app/core/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.star_rounded,
              color: Color(0xffFFDD4F),
            ),
          ),
      const    Text(
            '4.8',
            style: Styles.textStyle16,
          ),
     const     SizedBox(width: 6),
          Text(
            '(2390)',
            style: Styles.textStyle14.copyWith(color: Colors.grey.shade400),
          )
        ],
      ),
    );
  }
}
