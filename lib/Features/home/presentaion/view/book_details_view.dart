import 'package:booly_app/Features/home/presentaion/view/widgets/book_details_view_body.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';


class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});
  @override
  static String id = 'book_details_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: CustomBookDetailsAppBar(),
      ),
      body: BookDetailsViewBody(),
    );
  }
}
