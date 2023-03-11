import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'books_action.dart';
import 'custom_Book_view.dart';
import 'rating_bar.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .22),
          child: const CustomBookImage(
            imageUrl: '00',
          ),
        ),
        const SizedBox(
          height: 56,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Sami mhd Amin',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        RatingBar(
          mainAxisAlignment: MainAxisAlignment.center,
          count: 0,
          rating: 0.0,
        ),
        const SizedBox(
          height: 46,
        ),
        const BooksAction(),
      ],
    );
  }
}
