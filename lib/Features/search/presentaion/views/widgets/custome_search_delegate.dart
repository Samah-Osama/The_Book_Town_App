import 'package:booly_app/Features/search/presentaion/views/search_view.dart';
import 'package:booly_app/constant.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  ThemeData appBarTheme(context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
        inputDecorationTheme:
            const InputDecorationTheme(fillColor: kPrimaryColor));
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 12),
      child: SearchView(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 12),
      child: SearchView(),
    );
  }
}
