import 'package:booly_app/Features/home/presentaion/view/widgets/book_list_item.dart';
import 'package:flutter/material.dart';

class NewstBooksListView extends StatelessWidget {
  const NewstBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
      return const BookListItem();
    }));
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
