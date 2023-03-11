import 'package:flutter/material.dart';
import '../../../../home/presentation/views/widgets/item_list_view.dart';
import 'custom_search_textfield.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: BooksListSearch(),
          ),
        ],
      ),
    );
  }
}

class BooksListSearch extends StatelessWidget {
  const BooksListSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // child: ItemListView(),
          child: Text('data'),
        );
      },
    );
  }
}
