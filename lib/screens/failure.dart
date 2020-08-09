import 'package:flutter/material.dart';

class FailedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Placed"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/fail.png",
              ),
              SizedBox(
                height: 10,
              ),
              Text("Order Id: 13RE232R")
            ],
          ),
        ),
      ),
    );
  }
}
