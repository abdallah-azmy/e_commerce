import 'package:first_task/Utilities/Style.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  CommentCard({
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
      onTap: () {},
      child: Container(
        height: 115,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 17,
              right: 20,
              child: CircleAvatar(
                radius: 25,
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/three.png",
                    height: 75,
                    width: 75,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "اسم المستخدم",
                    style: textStyle1Bold,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "20/9/2018",
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 12,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 220,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم"
                          " توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد",
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 12,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 15,
              top: 20,
              child: Row(
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
                  Icon(Icons.star,color: Colors.grey,size: 17,),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 1,
                  color: Colors.grey[400],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
