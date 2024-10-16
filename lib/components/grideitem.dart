import 'package:flutter/material.dart';
import 'package:shopping_app/models/shoeetile.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: List.generate(
            categoriesGrid.length,
            (index) => GridItem(index),
          ),
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final int index;

  const GridItem(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.teal,
            blurRadius: 1,
            offset: Offset(4.5, 4.5),
          ),
        ],
        color: Colors.white,
        border: Border.all(color: Colors.teal, width: 1.5),
        borderRadius: (index == 0 
        || index == 3 
        || index == 5
         || index == 8
         || index == 11
         || index == 7
         )
            ? BorderRadius.only(
                topRight: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              )
            : BorderRadius.only(
                topLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("${categoriesGrid[index].imageURL}"),
            width: 100,
            height: (
              index == 0 
              || index == 3 || index == 5 || index == 8 || index == 11
         || index == 7
            ) ? 200 : 300,
            fit: BoxFit.contain,
          ),
          
          SizedBox(height: 4,),
          Text(
            categoriesGrid[index].name,
            style: GoogleFonts.pacifico(
              color: Colors.teal.shade900,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 4,),
          Text(
          '₹${categoriesGrid[index].price}',
            style: GoogleFonts.pacifico(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.teal.shade900
            ),
          ),
        ],
      ),
    );
  }
}
