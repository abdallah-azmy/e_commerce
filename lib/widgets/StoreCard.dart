import 'package:first_task/Utilities/Style.dart';
import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  StoreCard({
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
      onTap: onPressed,
      child: Container(
        height: heightOfCard,
        width: widthOfCard,
        child: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/images/three.png",
                  height: 75,
                  width: 75,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "اسم المتجر",
                      style: textStyle1Bold,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star,color: Colors.yellow,size: 17,),
                        SizedBox(
                          width: 1,
                        ),
                        Icon(Icons.star,color: Colors.yellow,size: 17,),
                        SizedBox(
                          width: 1,
                        ),
                        Icon(Icons.star,color: Colors.yellow,size: 17,),
                        SizedBox(
                          width: 1,
                        ),
                        Icon(Icons.star,color: Colors.yellow,size: 17,),
                        SizedBox(
                          width: 1,
                        ),
                        Icon(Icons.star,color: Colors.yellow,size: 17,),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "الرياض.السعودية.جدة",
                      style: textStyle1,
                    )
                  ],
                )
              ],
            ),
            Positioned(
              left: 5,
              height: 2,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
