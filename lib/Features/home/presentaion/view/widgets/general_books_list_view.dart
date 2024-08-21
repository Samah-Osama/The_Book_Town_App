import 'package:booly_app/Features/home/presentaion/view/book_details_view.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/custom_book_image.dart';
import 'package:booly_app/Features/home/presentaion/view_models/general_books_cubit/generalbooks_cubit.dart';
import 'package:booly_app/core/widgets/custom_error_widget.dart';
import 'package:booly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GeneralBooksListView extends StatefulWidget {
  const GeneralBooksListView({super.key});

  @override
  State<GeneralBooksListView> createState() => _GeneralBooksListViewState();
}

class _GeneralBooksListViewState extends State<GeneralBooksListView> {
  @override
  void initState() {
    BlocProvider.of<GeneralbooksCubit>(context).fetchGeneralBooks();
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralbooksCubit, GeneralbooksState>(
      builder: (context, state) {
        if (state is GeneralbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
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
                      imageUrl: (state.books[index].volumeInfo?.imageLinks
                              ?.thumbnail) ??
                          'https://demofree.sirv.com/nope-not-here.jpg'),
                );
              },
            ),
          );
        } else if (state is GeneralbooksFailure) {
          return CustomErrorWidget(errorMessege: state.errorMessege);
        }
        return const CustomLoadingIndicator();
      },
    );
  }
}
