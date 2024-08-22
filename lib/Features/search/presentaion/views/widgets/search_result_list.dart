import 'package:booly_app/Features/home/presentaion/view/widgets/custom_book_image.dart';
import 'package:booly_app/Features/search/presentaion/views/widgets/search_result_list_view.dart';
import 'package:booly_app/core/styles.dart';
import 'package:flutter/material.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          'Search Result',
          style: Styles.textStyle18,
        ),
        SizedBox(height: 12),
        Expanded(child: SearchResultListView())
      ],
    );
  }
}
