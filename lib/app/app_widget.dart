import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_search/app/pages/selection/selection_page.dart';
import 'package:infinite_search/app/utils/constants.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Infinite Search",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: CColors.textColor,
        ).copyWith(
          primary: CColors.textColor,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: CColors.textColor,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.albertSansTextTheme(),
      ),
      home: const SelectionPage(),
    );
  }
}
