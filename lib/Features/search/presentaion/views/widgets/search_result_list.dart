import 'package:booly_app/Features/home/presentaion/view/widgets/newest_book_list_item.dart';
import 'package:booly_app/Features/home/presentaion/view_models/newest_book_cubit/newestbook_cubit.dart';
import 'package:booly_app/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            return Text('haha');
          }),
        ),
      ],
    );
  }
}
