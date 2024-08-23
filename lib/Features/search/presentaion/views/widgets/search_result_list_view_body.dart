import 'package:booly_app/Features/home/presentaion/view/book_details_view.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/custom_book_image.dart';
import 'package:booly_app/core/models/book_model/book_model.dart';
import 'package:booly_app/core/styles.dart';
import 'package:flutter/material.dart';

class SearchResultListViewBody extends StatelessWidget {
  const SearchResultListViewBody({super.key, required this.bookModel});
  @override
  final BookModel bookModel;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, BookDetailsView.id,
              arguments: bookModel);
        },
        child: SizedBox(
          height: 100,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 0.7 / 1,
                child: CustomBookImage(
                    imageUrl: (bookModel.volumeInfo?.imageLinks?.thumbnail) ??
                        'https://demofree.sirv.com/nope-not-here.jpg'),
              ),
              const SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      bookModel.volumeInfo?.title ?? 'This Book Has No Title',
                      style: Styles.textStyle20
                          .copyWith(fontFamily: 'Wittgenstein'),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Wrap(
                      direction: Axis.vertical,
                      children: List.generate(1, (index) {
                        return Text(
                          bookModel.volumeInfo?.authors?[index] ?? 'No Author',
                          style: Styles.textStyle16,
                        );
                      })),
                  // const SizedBox(height: 15),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       'Free',
                  //       style: Styles.textStyle20.copyWith(
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ],
                  // )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
