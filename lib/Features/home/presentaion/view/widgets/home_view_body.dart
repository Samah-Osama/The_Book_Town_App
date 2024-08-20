import 'package:booly_app/Features/home/presentaion/view/widgets/newst_books_list_view.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/books_list_view.dart';
import 'package:booly_app/Features/home/presentaion/view_models/general_books_cubit/generalbooks_cubit.dart';
import 'package:booly_app/Features/home/presentaion/view_models/newest_book_cubit/newestbook_cubit.dart';
import 'package:booly_app/constant.dart';
import 'package:booly_app/core/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

Future<void> general(context) {
  return BlocProvider.of<GeneralbooksCubit>(context).fetchGeneralBooks();
}

Future<void> newest(context) {
  return BlocProvider.of<NewestbookCubit>(context).fetchNewsetBooks();
}

Future<void> refresh(context) {
  return Future.wait(
    [
      general(context),
      newest(context),
    ],
  );
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: RefreshIndicator(
        displacement: 80,
        backgroundColor: kPrimaryColor,
        onRefresh: () => refresh(context),
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BooksListView(),
                  SizedBox(height: 50),
                  Text(
                    'Newst Books',
                    style: Styles.textStyle18,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            NewstBooksListView()
          ],
        ),
      ),
    );
  }
}
