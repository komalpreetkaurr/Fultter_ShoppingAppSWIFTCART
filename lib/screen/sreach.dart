import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchScreen(),
    );
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> sweetTexts = [
    "Shop the trends, set your own 😎",
    "Discover, shop, repeat 🔁",
    "Shop with purpose, wear with pride 💯",
    "Life is short, buy the shoes 🥾",
    "Shopping: because you deserve it ❤️",
    "Fashion fades, style is eternal. 👗",
    "Dress like you're already famous. 🌟",
    "Elegance is an attitude. 💅",
    "Shoes speak louder than words. 👠",
    "Dress how you want to be addressed. 📬"
  ];

  String randomSweetText() {
    final random = Random();
    return sweetTexts[random.nextInt(sweetTexts.length)];
  }

  final FocusNode _searchFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Color(0xFF004D40)),
            ),
            child: TextFormField(
              focusNode: _searchFocusNode,
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search_outlined),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              randomSweetText(),
              style: GoogleFonts.lemon(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
