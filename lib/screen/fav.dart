import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/components/favitems.dart';
import 'package:shopping_app/models/favvv.dart';
import 'package:shopping_app/models/shoeetile.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Favourite>(
      builder: (context, FavProvider, child) {
        bool showBackArrow = FavProvider.getuserFav().isNotEmpty;

        return Scaffold(
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
              'Wishlist: Style Your Dreams',
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
                child: FavProvider.getuserFav().isEmpty
                    ? Center(
                        child: Text(
                          'Wishlist: Awaiting Your Desires!',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    : ListView.builder(
                        itemCount: FavProvider.getuserFav().length,
                        itemBuilder: (context, index) {
                          Product individualFav = FavProvider.getuserFav()[index];
                          return FavItem(product: individualFav);
                        },
                      ),
              ),
            ],
          ),
        );
      },
    );
  }
}
