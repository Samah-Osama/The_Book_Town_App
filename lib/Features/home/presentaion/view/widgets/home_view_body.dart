import 'package:booly_app/Features/home/presentaion/view/widgets/books_list_view.dart';
import 'package:booly_app/Features/home/presentaion/view/widgets/custom_app_bar.dart';
import 'package:booly_app/core/styles.dart';
import 'package:booly_app/core/utils/assets_data.dart';
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
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3 / 5,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.kTestImage),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Text('Book title lklfkelfkel'),
              Text('writer name'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Price 19.99'),
                  Text('rate '),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
