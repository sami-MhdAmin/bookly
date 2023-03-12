import 'package:bookly/core/widget/custom_failure_message.dart';
import 'package:bookly/core/widget/custom_loading_widget.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_Book_view.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.builder(
              itemCount: state.bookModel.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomBookImage(
                    imageUrl: state.bookModel[index].volumeInfo.imageLinks
                            ?.thumbnail ??
                        "sam",
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return Center(
            child: CustomFailureMessage(errMsg: state.errMessege),
          );
        } else {
          return const Center(
            child: CustomLoadingWidget(),
          );
        }
      },
    );
  }
}
