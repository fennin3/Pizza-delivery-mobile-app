import 'package:flutter/material.dart';
import 'package:pizza_app/constants.dart';
import 'package:pizza_app/quantity_icon.dart';
import 'cart_screen.dart';

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
                    color: Theme.of(context).primaryColor,
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
                    color: Theme.of(context).primaryColor,
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
                    color: Theme.of(context).primaryColor,
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
            Text(
              "Price:  \$50.00",
              style: Quantity,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  elevation: 15,
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.add_shopping_cart),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Go to cart"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartScreen(),
            ),
          ),
        },
        child: Icon(
          Icons.shopping_cart,
          color: Colors.black,
        ),
      ),
    );
  }
}
