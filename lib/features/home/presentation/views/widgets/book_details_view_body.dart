import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_Book_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_bar.dart';
import 'package:flutter/material.dart';
import 'books_action.dart';
import 'books_details_section.dart';
import 'custom_book_detail_appbar.dart';
import 'similar_books_listview.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
              children: const [
                CustomBookDetialsAppBar(),
                SizedBox(
                  height: 16,
                ),
                BooksDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
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


