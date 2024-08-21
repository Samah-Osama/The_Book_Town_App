import 'package:booly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booly_app/core/utils/functions/launch_url.dart';
import 'package:booly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksActionButton extends StatelessWidget {
  const BooksActionButton({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onPressed: () {},
          text: 'Download',
          textcolor: Colors.black,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
        ),
        CustomButton(
          onPressed: () async {
            launchCustomUrl(context, "bookModel.volumeInfo?.previewLink");
          },
          text: previewText(bookModel),
          backgroundColor: const Color(0xffEF8262),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
        )
      ],
    );
  }
}

String previewText(BookModel bookModel) {
  if (bookModel.volumeInfo?.previewLink == null) {
    return 'Not available';
  } else {
    return 'Preview';
  }
}

String downloadText(BookModel bookModel) {
  if (bookModel.volumeInfo?.previewLink == null) {
    return 'Not available';
  } else {
    return 'Download';
  }
}
