import 'package:booly_app/core/models/book_model/book_model.dart';
import 'package:booly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/book_details_view_body.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/custom_book_details_app_bar.dart';
import 'package:booly_app/Features/home/presentaion/view_models/similar_books/similar_books_cubit.dart';
import 'package:booly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});
  @override
  static String id = 'book_details_view';

  @override
  Widget build(BuildContext context) {
    BookModel bookModel = ModalRoute.of(context)!.settings.arguments as BookModel;
    return BlocProvider(
      create: (context) =>
          SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
      child:  Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: CustomBookDetailsAppBar(),
        ),
        body: BookDetailsViewBody(bookModel: bookModel),
      ),
    );
  }
}
