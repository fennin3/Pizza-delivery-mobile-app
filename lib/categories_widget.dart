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
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: background_,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              emoji,
              style: IconSize,
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
            Icon(
              Icons.arrow_forward_ios,
            )
          ],
        ),
      ),
    );
  }
}
