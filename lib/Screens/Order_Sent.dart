import 'package:first_task/Utilities/Style.dart';
import 'package:first_task/widgets/button.dart';
import 'package:flutter/material.dart';

class RequestSent extends StatefulWidget {
  @override
  _RequestSentState createState() => _RequestSentState();
}

class _RequestSentState extends State<RequestSent> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xFFF7F7F9),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: SizedBox(
                    width: 140,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_forward_ios,
                          textDirection: TextDirection.ltr,
                          size: 18,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3, right: 3),
                          child: Text(
                            "السلة",
                            style: textStyle11,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.18,
                height: 120,
                color: Colors.black87,
                child: Center(
                  child: Text(
                    "ارسل الطلب للمتجر و تمت الموافقة\nسيتم التوصيل خلال يومين",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Tajawal",
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 35, left: 35),
                child: Text(
                  "سيتم التواصل معك عن طريق الهاتف وسيتم التوصيل علي هذا الموقع",
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 200,
                  width: 300,
                  child: Image.asset(
                    "assets/images/1024.png",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Button(
                      text: "عودة للرئيسية",
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
