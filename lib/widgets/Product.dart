import 'package:first_task/Screens/Shop_Details.dart';
import 'package:first_task/Utilities/Style.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  Product({
    this.imageLink,
    this.circleText,
    this.onPressed,
    this.widthOfCard,
    this.heightOfCard,
  });
  var imageLink;
  var circleText;
  var onPressed;

  double elevation;
  double widthOfCard;
  double heightOfCard;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(new MaterialPageRoute(builder: (context) => ShopDetails()));
      },
      child: Column(
        children: <Widget>[
          Image.asset(
            imageLink ?? "assets/images/three.png",
            height: 80,
            width: MediaQuery.of(context).size.width / 3.5,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "اسم المتجر",
            style: textStyle1,
          )
        ],
      ),
    );
  }
}
