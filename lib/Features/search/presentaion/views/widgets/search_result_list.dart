import 'package:booly_app/Features/home/presentaion/view/widgets/best_seller_list_view_item.dart';
import 'package:booly_app/core/styles.dart';
import 'package:flutter/material.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Text(
          'Search Result',
          style: Styles.textStyle18,
        ),
        const SizedBox(height: 12),
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) {
            return const BestSellerListViewItem();
          }),
        ),
      ],
    );
  }
}