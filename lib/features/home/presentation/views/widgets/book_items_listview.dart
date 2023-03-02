import 'package:flutter/material.dart';

import 'item_list_view.dart';

class BooksItemsListView extends StatelessWidget {
  const BooksItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: ItemListView(),
        );
      },
    );
  }
}
