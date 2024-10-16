import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/favvv.dart';
import 'package:shopping_app/models/shoeetile.dart';

class FavItem extends StatefulWidget {
  final Product product;

  FavItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _FavItemState createState() => _FavItemState();
}

class _FavItemState extends State<FavItem> {
  void removeitemfromFav() {
    Provider.of<Favourite>(context,listen: false).removeitemfromFav(widget.product);
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
          onPressed: removeitemfromFav, 
        ),
      ),
    );
  }
}