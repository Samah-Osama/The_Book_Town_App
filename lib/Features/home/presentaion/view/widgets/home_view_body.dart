import 'package:booly_app/Features/home/presentaion/view/widgets/best_seller_list_view_item.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/books_list_view.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/custom_app_bar.dart';
import 'package:booly_app/constant.dart';
import 'package:booly_app/core/styles.dart';
import 'package:booly_app/core/utils/assets_data.dart';
import 'package:flutter/cupertino.dart';
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
            style: Styles.textStyle18,
          ),
          SizedBox(height: 20),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}


