import 'package:booly_app/Features/home/presentaion/view/widgets/book_rate.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/books_action_button.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/custom_book_image.dart';
import 'package:booly_app/core/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .20),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 43),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.normal),
        ),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 10),
        const BooksActionButton(),
      ],
    );
  }
}
