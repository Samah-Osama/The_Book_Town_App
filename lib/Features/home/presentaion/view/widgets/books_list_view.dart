import 'package:booly_app/Features/home/presentaion/view/widgets/custom_book_image.dart';
import 'package:booly_app/Features/home/presentaion/view_models/general_books_cubit/generalbooks_cubit.dart';
import 'package:booly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralbooksCubit, GeneralbooksState>(
      builder: (context, state) {
        if (state is GeneralbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CustomBookImage();
              },
            ),
          );
        } else if (state is GeneralbooksFailure) {
          return CustomErrorWidget(errorMessege: state.errorMessege);
        } else {
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
