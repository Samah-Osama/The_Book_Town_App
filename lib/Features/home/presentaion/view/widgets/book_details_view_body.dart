import 'package:booly_app/core/models/book_model/book_model.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/books_details_section.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/similar_books_section.dart';
import 'package:booly_app/Features/home/presentaion/view_models/similar_books/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsViewBody extends StatefulWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsViewBody> createState() => _BookDetailsViewBodyState();
}

class _BookDetailsViewBodyState extends State<BookDetailsViewBody> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo?.categories?[0] ?? 'No Category');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsSection( bookModel: widget.bookModel),
            const  Expanded(
                child: SizedBox(height: 30),
              ),
              SimilarBooksSection(bookModel: widget.bookModel),
            ],
          ),
        )
      ],
    );
  }
}
