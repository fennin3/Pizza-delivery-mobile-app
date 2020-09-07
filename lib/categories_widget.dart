import 'package:flutter/material.dart';
import 'constants.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    @required this.title,
    @required this.emoji,
    @required this.background_,
  });
  Color background_;
  String emoji;
  String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(8),
                child: Text(
                  emoji,
                  style: IconSize,
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                title,
                style: CatLabel,
              ),
              SizedBox(
                height: 23,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF4C724),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(3),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
