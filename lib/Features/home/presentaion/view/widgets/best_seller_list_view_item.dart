import 'package:booly_app/Features/home/presentaion/view/widgets/book_rate.dart';
import 'package:booly_app/core/styles.dart';
import 'package:booly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 3.5 / 5,
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
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20
                          .copyWith(fontFamily: 'Wittgenstein'),
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const BookRating()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
