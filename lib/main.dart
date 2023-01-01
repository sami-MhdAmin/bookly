import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/data/presentation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      home: SplashView(),
    );
  }
}

