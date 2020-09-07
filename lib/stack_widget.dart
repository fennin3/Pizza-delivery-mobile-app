import 'package:flutter/material.dart';
import 'package:pizza_app/constants.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          elevation: 30,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            alignment: Alignment.center,
            height: 250,
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white30,
              ),
              margin: EdgeInsets.only(bottom: 70),
              height: 150,
              width: 290,
            ),
          ),
        ),
        Positioned(
          bottom: 65,
          left: 30,
          child: Hero(
            tag: "image_",
            child: Image.asset(
              "assets/images/pizza_image3.png",
            ),
          ),
          height: 230,
        ),
        Positioned(
          top: 200,
          left: 30,
          child: Text(
            "Pizza type 1",
            style: CatLabel,
          ),
        ),
        Positioned(
          top: 200,
          right: 30,
          child: Text(
            "\$20.00",
            style: CatLabel,
          ),
        ),
        Positioned(
          top: 230,
          left: 30,
          child: Text(
            "Pizza Category",
          ),
        )
      ],
      overflow: Overflow.visible,
    );
  }
}
