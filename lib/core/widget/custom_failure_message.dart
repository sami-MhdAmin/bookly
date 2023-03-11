import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/styles.dart';

class CustomFailureMessage extends StatelessWidget {
  const CustomFailureMessage({super.key, required this.errMsg});

  final String errMsg;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMsg,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
