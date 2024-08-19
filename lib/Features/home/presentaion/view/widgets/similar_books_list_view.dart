import 'package:booly_app/Features/home/presentaion/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .16,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomBookImage(
              imageUrl: "http://books.google.com/books/content?id=M7HGEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
            );
          },
        ),
      ),
    );
  }
}
