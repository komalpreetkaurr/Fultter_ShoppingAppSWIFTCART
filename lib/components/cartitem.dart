import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/cartt.dart';
import 'package:shopping_app/models/shoeetile.dart';

class CartItem extends StatefulWidget {
  final Product product;

  CartItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context,listen: false).removeitemfromcart(widget.product);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(20),
      child: ListTile(
        leading: Image.asset(widget.product.imageURL),
        title: Text(widget.product.name),
        subtitle: Text('Price: ₹${widget.product.price.toString()}'), 
        trailing: IconButton(
          icon: Icon(Icons.delete_outline),
          onPressed: removeItemFromCart, 
        ),
      ),
    );
  }
}
class TotalPrice extends StatelessWidget {
  final List<Product> cartItems;

  TotalPrice({Key? key, required this.cartItems}) : super(key: key);
  double calculateTotalPrice() {
    double totalPrice = 0.0;
    for (Product item in cartItems) {
      totalPrice += item.price as double;
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
            '₹${calculateTotalPrice().toStringAsFixed(2)}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
