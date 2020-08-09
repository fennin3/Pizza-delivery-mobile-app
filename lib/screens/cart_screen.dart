import 'package:flutter/material.dart';
import 'package:pizza_app/quantity_icon.dart';
import 'package:pizza_app/cart_item.dart';
import 'package:pizza_app/cart_item.dart';
import 'package:pizza_app/screens/success_page.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          CartItem(
            image: "assets/images/b2.jpg",
            name: "Meal 1",
            price: 20,
          ),
          CartItem(
            image: "assets/images/p.jpg",
            name: "Meal 2",
            price: 30,
          ),
          CartItem(
            image: "assets/images/p3.jpg",
            name: "Meal 2",
            price: 30,
          ),
          CartItem(
            image: "assets/images/b1.jpg",
            name: "Meal 2",
            price: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 20),
            child: Text("Total: \$ 110"),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SuccessPage(),
                  ),
                );
              },
              child: Card(
                elevation: 10,
                color: Colors.teal,
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Place Order"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
