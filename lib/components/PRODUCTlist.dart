import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/cartt.dart';
import 'package:shopping_app/models/favvv.dart';
import 'package:shopping_app/models/shoeetile.dart';
import 'package:shopping_app/screen/cart.dart';

class Productcat extends StatefulWidget {
  final Product models;

  Productcat({required this.models});

  @override
  _ProductcatState createState() => _ProductcatState();
}

void additemstocart(BuildContext context, Product product) {
  Provider.of<Cart>(context, listen: false).additemstocart(product);
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Successfully added!"),
      content: Text("Check your cart!"),
    ),
  );
}
  void additemstoFav(BuildContext context, Product product) {
  Provider.of<Favourite>(context, listen: false).additemstoFav(product);
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Successfully added!"),
      content: Text("Check your Wishlist!"),
    ),
  );
}

class _ProductcatState extends State<Productcat> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade800,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_bag),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            widget.models.imageURL,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45.0),
                  topRight: Radius.circular(45.0),
                  bottomLeft: Radius.circular(45.0),
                  bottomRight: Radius.circular(45.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.models.name,
                    style: GoogleFonts.pacifico(
                      color: Colors.teal.shade900,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.models.description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Price: ₹${widget.models.price}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                    ElevatedButton(
                    onPressed: () {
                      additemstocart(context, widget.models);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.tealAccent.shade700,
                    ),
                    child: Text('Add to Cart'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: Icon(
                isFavorited
                 ? Icons.favorite 
                 : Icons.favorite_border,
                color: Colors.red,
              ),
              onPressed: () {
                
                      additemstoFav(context, widget.models);
                setState(() {
                  isFavorited = !isFavorited;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
