import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: const [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textcolor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              text: "19.9\$",
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: Color(0xffEF8268),
              textcolor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              text: "Free Preview",
            ),
          ),
        ],
      ),
    );
  }
}
