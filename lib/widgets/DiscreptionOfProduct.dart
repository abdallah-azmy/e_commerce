import 'package:first_task/Utilities/Style.dart';
import 'package:first_task/widgets/button.dart';
import 'package:flutter/material.dart';

class DescreptionOfProduct extends StatelessWidget {
  DescreptionOfProduct({
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
    this.cardPressed,
  });
  var text;
  var textColor;
  var onPressed;
  var cardPressed;
  var backgroundColor;
  var borderColor;
  var fontWeight;
  var textStyle;
  double elevation;
  double widthOfButton;
  double hightOfButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthOfButton ?? MediaQuery.of(context).size.width / 1.15,
      height: hightOfButton,
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: cardPressed,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "الرقم  :  1",
                        style: textStyle1Bold,
                      )),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[800],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "المنتج بالتفاصيل    :    المعلومات",
                        style: textStyle1Bold,
                      )),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[300],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "تكلفة الطلبية           :    300 ريال",
                        style: textStyle1Bold,
                      )),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[800],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "تكلفة التوصيل         :    300 ريال",
                        style: textStyle1Bold,
                      )),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[300],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "وسيلة الدفع             :    عند الاستلام",
                        style: textStyle1Bold,
                      )),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[800],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "عدد المنتجات            :    4",
                        style: textStyle1Bold,
                      )),
                ),
              ],
            ),
          ),
          Button(
            text: text,
            widthOfButton: MediaQuery.of(context).size.width,
            onPressed: onPressed,
          )
        ],
      ),
      color: backgroundColor ?? Colors.white,
    );
  }
}
