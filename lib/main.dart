import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'features/splash/presentation/views/splash_view.dart';
import 'package:flutter/services.dart';

//1. to Hide Statusbar
// SystemChrome.setEnabledSystemUIMode([SystemUiOverlay.bottom])

// 3.Show Statusbar
// SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
// You need to put this code on :
// 1.For Single Screen

// @override
//   void initState() {
//     // put it here
//     super.initState();
//   }
// 2.For All pages in main.dart:

//  void main() {
//       // put it here
//       runApp(...);
//   }

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);

  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter().router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
