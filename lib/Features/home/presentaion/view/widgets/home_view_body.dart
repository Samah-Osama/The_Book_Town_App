import 'package:booly_app/Features/home/presentaion/view/widgets/books_list_view.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/custom_app_bar.dart';
import 'package:booly_app/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeAppBar(),
          BooksListView(),
          SizedBox(height: 50),
          Text(
            'Best Seller',
            style: Styles.titleMedium,
          )
        ],
      ),
    );
  }
}
