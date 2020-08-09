import 'package:flutter/material.dart';
import 'constants.dart';

class ListMeal extends StatelessWidget {
  final String image;

  ListMeal({this.image});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        height: 230,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 5,
          ),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.asset(
                  image,
                  height: 155,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Description Here",
                    style: kTextLabelStyle,
                  ),
                  Text(
                    "Price here",
                    style: kTextLabelStyle,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.star),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "4 Star",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.timer),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "35 mins",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
