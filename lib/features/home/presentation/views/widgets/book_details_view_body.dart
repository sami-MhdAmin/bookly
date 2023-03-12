import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_Book_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_bar.dart';
import 'package:flutter/material.dart';
import 'books_action.dart';
import 'books_details_section.dart';
import 'custom_book_detail_appbar.dart';
import 'similar_books_listview.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    // we use custom scroll because we have expanded widget in the childs
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 28,
            ),
            child: Column(
              children: [
                const CustomBookDetialsAppBar(),
                const SizedBox(
                  height: 16,
                ),
                BooksDetailsSection(bookModel: bookModel),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
