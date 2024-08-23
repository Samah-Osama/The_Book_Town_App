import 'package:booly_app/Features/search/presentaion/view_models/search_cubit/search_cubit.dart';
import 'package:booly_app/Features/search/presentaion/views/widgets/search_result_list_view_body.dart';
import 'package:booly_app/core/styles.dart';
import 'package:booly_app/core/widgets/custom_error_widget.dart';
import 'package:booly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
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
        Expanded(child: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            if (state is SearchSuccessState) {
              if (state.books.isNotEmpty) {
                return ListView.builder(
                    itemCount: state.books.length,
                    itemBuilder: (context, int) {
                      return SearchResultListViewBody(
                          bookModel: state.books[int]);
                    });
              } else {
                return const CustomErrorWidget(errorMessege: 'Book Not Found');
              }
            } else if (state is SearchFailureState) {
              if (state.errorMessege == 'Missing query.') {
                return const Text('What are you searching for ?!!');
              } else {
                return CustomErrorWidget(errorMessege: state.errorMessege);
              }
            } else {
              return const CustomLoadingIndicator();
            }
          },
        ))
      ],
    );
  }
}
