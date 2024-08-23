import 'package:booly_app/core/models/book_model/book_model.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/books_action_button.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/custom_book_image.dart';
import 'package:booly_app/core/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .20),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ??
                'https://demofree.sirv.com/nope-not-here.jpg',
          ),
        ),
        const SizedBox(height: 43),
        Text(
          textAlign: TextAlign.center,
          softWrap: true,
          bookModel.volumeInfo?.title ?? ' This Book Without Title',
          style: Styles.textStyle30.copyWith(fontSize: 24),
        ),
        const SizedBox(height: 10),
        Wrap(
            direction: Axis.vertical,
            children: List.generate(bookModel.volumeInfo?.authors?.length ?? 0,
                (index) {
              return Text(
                bookModel.volumeInfo!.authors?[index] ?? 'No Author',
                style: Styles.textStyle18,
              );
            })),
        const SizedBox(height: 10),
         BooksActionButton(bookModel: bookModel),
      ],
    );
  }
}
