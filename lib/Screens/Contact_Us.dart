import 'package:first_task/Utilities/Style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Added_Products_cart.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: Color(0xffF7F7F9),
            body: ListView(children: <Widget>[
              Material(
                color: Color(0xFFF7F7F9),
                child: Stack(
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
                                padding:
                                    const EdgeInsets.only(top: 3, right: 3),
                                child: Text(
                                  "القائمة الرئيسية",
                                  style: textStyle11,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (context) => AddedProducts()));
                        },
                        icon: Stack(
                          children: <Widget>[
                            Positioned(
                                left: 0,
                                bottom: 0,
                                child: Icon(Icons.shopping_cart)),
                            Positioned(
                              right: 3,
                              top: 3,
                              child: CircleAvatar(
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                                radius: 6,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, top: 0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "كيف نساعدك ؟",
                    style: textStyle1Bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, top: 5),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "الأسئلة الأكثر شيوعا",
                    style: textStyle1,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .75,
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.brown, width: 2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.phone_android),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(
                                  "80479274789253970",
                                  style: textStyle1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.mail),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(
                                  "aait.sa@info.com",
                                  style: textStyle1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Icon(FontAwesomeIcons.facebook),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(
                                  "Facebook/aait",
                                  style: textStyle1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Icon(FontAwesomeIcons.twitter),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(
                                  "Twitter/aait",
                                  style: textStyle1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  )),
            ])));
  }
}
