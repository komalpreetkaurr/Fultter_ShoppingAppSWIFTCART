
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/components/cartitem.dart';
import 'package:shopping_app/models/cartt.dart';
import 'package:shopping_app/models/shoeetile.dart';

class CartPage extends StatelessWidget {
  final bool showBackArrow;

  CartPage({this.showBackArrow = false});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cartProvider, child) => Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          backgroundColor: Colors.teal[100],
          elevation: 0,
          leading: showBackArrow
              ? IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              : null,
          title: Text(
            'Ready, Set, SHOP! 🎁',
            style: TextStyle(
              color: Color(0xFF004D40),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartProvider.getusercart().length,
                itemBuilder: (context, index) {
                  Product individualShoe = cartProvider.getusercart()[index];
                  return CartItem(product: individualShoe);
                },
              ),
            ),
            TotalPrice(cartItems: cartProvider.getusercart()),
          ],
        ),
      ),
    );
  }
}

class TotalPrice extends StatelessWidget {
  final List<Product> cartItems;

  TotalPrice({Key? key, required this.cartItems}) : super(key: key);
 calculateTotalPrice() {
  double totalPrice = 0.0;
  for (Product item in cartItems) {
    totalPrice += (item.price as num).toDouble();
  }
  return totalPrice;
}


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total Price:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
         Text(
  cartItems.isNotEmpty
      ? '₹${calculateTotalPrice().toStringAsFixed(2)}'
      : 'Cart is empty',
  style: TextStyle(fontWeight: FontWeight.bold),
),

        ],
      ),
    );
  }
}
