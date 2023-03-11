import 'package:bookly/core/widget/custom_failure_message.dart';
import 'package:bookly/core/widget/custom_loading_widget.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'item_list_view.dart';

class BooksItemsListView extends StatelessWidget {
  const BooksItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            // shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.newestBooks.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ItemListView(bookModel: state.newestBooks[index]),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomFailureMessage(errMsg: state.errMessege);
        } else {
          return const Center(child: CustomLoadingWidget());
        }
      },
    );
  }
}
