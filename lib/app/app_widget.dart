import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_search/app/pages/listing_page.dart';
import 'package:infinite_search/app/utils/constants.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Infinite Search",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: CColors.textColor),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        textTheme: GoogleFonts.albertSansTextTheme(),
      ),
      home: const ListingPage(),
    );
  }
}
