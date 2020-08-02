import 'package:flutter/material.dart';
import 'package:pizza_app/screens/list_screen.dart';
import 'categories_widget.dart';

const inactiveCardColour = Colors.white12;
const activeCardColour = Colors.teal;

class CategoryRow extends StatefulWidget {
  @override
  _CategoryRowState createState() => _CategoryRowState();
}

class _CategoryRowState extends State<CategoryRow> {
  Color CatCard1_Color = inactiveCardColour;
  Color CatCard2_Color = inactiveCardColour;
  Color CatCard3_Color = inactiveCardColour;

  void UpdateBackColor(int cardnumb) {
    // Card 1
    if (cardnumb == 1) {
      if (CatCard1_Color == inactiveCardColour) {
        CatCard1_Color = activeCardColour;
        CatCard2_Color = inactiveCardColour;
        CatCard3_Color = inactiveCardColour;
      } else {
        CatCard1_Color = inactiveCardColour;
      }
    }
    if (cardnumb == 2) {
      if (CatCard2_Color == inactiveCardColour) {
        CatCard2_Color = activeCardColour;
        CatCard1_Color = inactiveCardColour;
        CatCard3_Color = inactiveCardColour;
      } else {
        CatCard2_Color = inactiveCardColour;
      }
    }
    if (cardnumb == 3) {
      if (CatCard3_Color == inactiveCardColour) {
        CatCard3_Color = activeCardColour;
        CatCard2_Color = inactiveCardColour;
        CatCard1_Color = inactiveCardColour;
      } else {
        CatCard3_Color = inactiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                UpdateBackColor(1);
              });
            },
            child: CategoryCard(
              background_: CatCard1_Color,
              emoji: "🍕",
              title: "Pizza",
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                UpdateBackColor(2);
              });
            },
            child: CategoryCard(
              background_: CatCard2_Color,
              title: "Burger",
              emoji: "🍔",
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListItems(),
                ),
              );
              // setState(() {
              //   UpdateBackColor(3);
              // });
            },
            child: CategoryCard(
              background_: CatCard3_Color,
              title: "Dessert",
              emoji: "🍦",
            ),
          ),
        ),
      ],
    );
  }
}
