import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/components/PRODUCTlist.dart';
import 'package:shopping_app/components/grideitem.dart';
import 'package:shopping_app/models/cartt.dart';
import 'package:shopping_app/models/shoeetile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: Column(
                  children: [
                    Text(
                      "Delivering Goods Swiftly",
                      style: GoogleFonts.pacifico(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.tealAccent.shade700,
                      ),
                    ),
                    SizedBox(height: 20,),
                    StaggeredGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      children: categoriesGrid
                          .asMap()
                          .entries
                          .map((entry) {
                        int index = entry.key;
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Productcat(
                                  models: categoriesGrid[index],
                                ),
                              ),
                            );
                          },
                          child: GridItem(index),
                        );
                      })
                      .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
