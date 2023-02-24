import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_Book_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_bar.dart';
import 'package:flutter/material.dart';
import 'books_action.dart';
import 'custom_book_detail_appbar.dart';
import 'similar_books_listview.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28,),
      child: Column(
        children: [
          const CustomBookDetialsAppBar(),
          const SizedBox(height: 16,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .22),
            child: const CustomBookImage(),
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
          const RatingBar(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 46,
          ),
          const BooksAction(),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 4,),
          const SimilarBooksListView(),
          const SizedBox(height: 40,),
        ],
      ),
    );
  }
}
