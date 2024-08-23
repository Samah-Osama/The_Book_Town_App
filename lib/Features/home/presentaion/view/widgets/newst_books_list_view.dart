import 'package:booly_app/Features/home/presentaion/view/widgets/newest_book_list_item.dart';
import 'package:booly_app/Features/home/presentaion/view_models/newest_book_cubit/newestbook_cubit.dart';
import 'package:booly_app/core/widgets/custom_error_widget.dart';
import 'package:booly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewstBooksListView extends StatefulWidget {
  const NewstBooksListView({super.key});

  @override
  State<NewstBooksListView> createState() => _NewstBooksListViewState();
}

class _NewstBooksListViewState extends State<NewstBooksListView> {
  @override
  void initState() {
    BlocProvider.of<NewestbookCubit>(context).fetchNewsetBooks();
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestbookCubit, NewestbookState>(
      builder: (context, state) {
        if (state is NewestbookSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) {
                return NewestBookListItem(bookModel: state.books[index]);
              },
            ),
          );
        } else if (state is NewestbookFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorWidget(errorMessege: state.errorMessege));
        }
        return const SliverToBoxAdapter(child: CustomLoadingIndicator());
      },
    );
  }
}
// class BestSellerListView extends StatelessWidget {
//   const BestSellerListView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         scrollDirection: Axis.vertical,
//         itemCount: 10,
//         itemBuilder: (context, index) {
//           return const BestSellerListViewItem();
//         });
//   }
// }
