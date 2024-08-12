import 'package:booly_app/Features/home/presentaion/view/widgets/books_details_section.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsSection(),
              Expanded(
                child: SizedBox(height: 30),
              ),
              SimilarBooksSection(),
            ],
          ),
        )
      ],
    );
  }
}
