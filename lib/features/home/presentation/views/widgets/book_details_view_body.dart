import 'package:bookly/features/home/presentation/views/widgets/custom_Book_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'custom_book_detail_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetialsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width *.22 ),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
