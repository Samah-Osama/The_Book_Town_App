import 'package:booly_app/Features/search/presentaion/views/widgets/search_result_list_view_body.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, int) {
          return const SearchResultListViewBody();
        });
  }
}
