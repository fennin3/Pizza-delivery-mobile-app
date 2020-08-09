import 'package:flutter/material.dart';
import 'package:pizza_app/constants.dart';
import 'package:pizza_app/quantity_icon.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              "Pizza 1",
              style: kTextLabelStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "This section is for the pizza description.\njust something brief. ",
              textAlign: TextAlign.center,
            ),
            Stack(
              children: <Widget>[
                Image.asset("assets/images/plate.png"),
                Positioned(
                  left: 50,
                  top: 35,
                  child: Hero(
                    tag: "image_",
                    child: Image.asset(
                      "assets/images/pizza_image3.png",
                      height: 250,
                    ),
                  ),
                ),
                Positioned(
                  top: 260,
                  left: 40,
                  child: Card(
                    elevation: 10,
                    color: Colors.teal,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "S",
                        style: kTextLabelStyle,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 310,
                  left: 160,
                  child: Card(
                    elevation: 10,
                    color: Colors.teal,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "M",
                        style: kTextLabelStyle,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 260,
                  right: 40,
                  child: Card(
                    elevation: 10,
                    color: Colors.teal,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "L",
                        style: kTextLabelStyle,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                QuantityIcon(
                  icon: Icon(Icons.remove),
                ),
                SizedBox(
                  width: 35,
                ),
                Text(
                  "2",
                  style: Quantity,
                ),
                SizedBox(
                  width: 35,
                ),
                QuantityIcon(
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white38,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\$20.00",
                        style: Quantity,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.add_shopping_cart),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Go to cart")
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
