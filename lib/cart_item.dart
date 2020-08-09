import 'package:flutter/material.dart';
import 'quantity_icon.dart';

int quan = 1;

class CartItem extends StatefulWidget {
  final int price;
  final String image;
  final String name;

  CartItem({
    @required this.image,
    @required this.name,
    @required this.price,
  });

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void quantityCont(choice) {
    if (choice == 1) {
      quan++;
    } else {
      if (quan > 1) {
        quan--;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: ListTile(
        leading: Card(
          elevation: 20,
          child: CircleAvatar(
            radius: 35.0,
            backgroundImage: AssetImage(widget.image),
          ),
        ),
        title: Text(widget.name),
        subtitle: Padding(
          padding: EdgeInsets.only(
            top: 8,
          ),
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    quantityCont(2);
                  });
                },
                child: QuantityIcon(
                  icon: Icon(Icons.remove),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(quan.toString()),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    quantityCont(1);
                  });
                },
                child: QuantityIcon(
                  icon: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ),
        trailing: Text(
          "\$ " + widget.price.toString(),
        ),
      ),
    );
  }
}
