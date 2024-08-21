import 'package:booly_app/Features/home/presentaion/view/book_details_view.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/custom_book_image.dart';
import 'package:booly_app/Features/home/presentaion/view_models/similar_books/similar_books_cubit.dart';
import 'package:booly_app/core/widgets/custom_error_widget.dart';
import 'package:booly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 20),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .16,
              child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, BookDetailsView.id,
                          arguments: state.books[index]);
                    },
                    child: CustomBookImage(
                      imageUrl: state
                              .books[index].volumeInfo?.imageLinks?.thumbnail ??
                          'https://demofree.sirv.com/nope-not-here.jpg',
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          CustomErrorWidget(errorMessege: state.errorMessege);
        }
        return CustomLoadingIndicator();
      },
    );
  }
}
