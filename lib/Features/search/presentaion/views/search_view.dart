import 'package:booly_app/Features/search/presentaion/view_models/search_cubit/search_cubit.dart';
import 'package:booly_app/Features/search/presentaion/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({
    super.key,
    required this.query,
  });

  final String query;
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    BlocProvider.of<SearchCubit>(context).getBook(query: widget.query);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SearchViewBody();
  }
}
