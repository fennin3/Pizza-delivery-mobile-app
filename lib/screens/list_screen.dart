import 'package:flutter/material.dart';
import 'package:pizza_app/constants.dart';
import 'package:pizza_app/list_meal.dart';

class ListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Items"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              ListMeal(
                image: "assets/images/p3.jpg",
              ),
              ListMeal(
                image: "assets/images/p.jpg",
              ),
              ListMeal(
                image: "assets/images/b1.jpg",
              ),
              ListMeal(
                image: "assets/images/b2.jpg",
              )
            ],
          ),
        ),
      ),
    );
  }
}
