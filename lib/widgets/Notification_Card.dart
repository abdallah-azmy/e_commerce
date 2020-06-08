import 'package:first_task/Utilities/Style.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  NotificationCard({
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
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 3,
            ),
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
                Expanded(
                  child: Text(
                    "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة،"
                    " لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص"
                    "أو العديد ",
                    style: textStyle1,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 1,
              color: Colors.grey[400],
            )
          ],
        ),
      ),
    );
  }
}
