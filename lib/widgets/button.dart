import 'package:first_task/Utilities/Style.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    this.text,
    this.textColor,
    this.onPressed,
    this.backgroundColor,
    this.fontWeight,
    this.widthOfButton,
    this.hightOfButton,
    this.elevation,
    this.borderColor,
    this.textStyle,
  });
  var text;
  var textColor;
  var onPressed;
  var backgroundColor;
  var borderColor;
  var fontWeight;
  var textStyle;
  double elevation;
  double widthOfButton;
  double hightOfButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthOfButton ?? MediaQuery.of(context).size.width / 1.5,
      height: hightOfButton,
      child: MaterialButton(
        elevation: elevation,
        child: Text(
          "$text",
          textAlign: TextAlign.center,
          style: textStyle ?? textStyle1ForButtons,
        ),
        onPressed: onPressed ?? () {},
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: borderColor ?? Color(0xFF313135)),
            borderRadius: BorderRadius.circular(4)),
        color: backgroundColor ?? Color(0xFF313135),
        padding: EdgeInsets.all(5),
      ),
    );
  }
}
