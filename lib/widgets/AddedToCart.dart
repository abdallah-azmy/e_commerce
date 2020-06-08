import 'package:first_task/Utilities/Style.dart';
import 'package:flutter/material.dart';

class AddedToCart extends StatelessWidget {
  AddedToCart({
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
    return Container(
      color: Colors.white,
      height: heightOfCard ?? 90,
      width: widthOfCard,
      child: Stack(
        children: <Widget>[
          InkWell(
            onTap: onPressed,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 8,
                ),
                Image.asset(
                  "assets/images/three.png",
                  height: 82,
                  width: 82,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "اسم المنتج بالكامل",
                      style: textStyle1Bold,
                    ),
                    Text(
                      "اسم المتجر",
                      style: textStyle1,
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "180",
                          style: TextStyle(
//                            fontFamily: "Tajawal",
                              fontSize: 12,
                              color: Colors.grey[500],
                              decoration: TextDecoration.lineThrough),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "117",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.add_circle_outline,
                          size: 20,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text("6",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[800],
                            )),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.remove_circle_outline,
                          size: 20,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            left: 0,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 25,
                height: 100,
                color: Color(0xff313135),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Icon(
                      Icons.delete_outline,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
