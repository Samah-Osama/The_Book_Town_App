import 'package:booly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/home/presentaion/view/book_details_view.dart';

import 'package:booly_app/Features/home/presentaion/view/widgets/custom_book_image.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/details_button.dart';
import 'package:booly_app/core/styles.dart';
import 'package:flutter/material.dart';

class NewestBookListItem extends StatelessWidget {
  const NewestBookListItem({super.key, required this.bookModel});
  @override
  final BookModel bookModel;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, BookDetailsView.id,
              arguments: bookModel);
        },
        child: SizedBox(
          height: 140,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 3.7 / 5,
                child: CustomBookImage(
                    imageUrl: (bookModel.volumeInfo?.imageLinks?.thumbnail) ??
                        'https://demofree.sirv.com/nope-not-here.jpg'),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        bookModel.volumeInfo!.title!,
                        style: Styles.textStyle20
                            .copyWith(fontFamily: 'Wittgenstein'),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Wrap(
                        direction: Axis.vertical,
                        children: List.generate(
                            bookModel.volumeInfo!.authors!.length, (index) {
                          return Text(bookModel.volumeInfo!.authors![index]);
                        })),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const DetailsButton()
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
