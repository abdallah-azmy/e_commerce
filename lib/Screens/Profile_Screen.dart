import 'package:first_task/Utilities/Style.dart';
import 'package:flutter/material.dart';
import 'Added_Products_cart.dart';
import 'Edit_Profile.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: Color(0xffF7F7F9),
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => EditProfile()));
                  },
                  child: CircleAvatar(
                    radius: 33,
                    backgroundColor: Colors.black87,
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ),
            ),
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
                    "الملف الشخصي",
                    style: textStyle1Bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 42,
                      child: ClipOval(
                        child: Image.asset("assets/images/pic.png"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Alshabaka User",
                      style: textStyle1Bold,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ///////////////////////////////////////////////////////
                    Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.phone_android),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "رقم الجوال",
                          style: textStyle1Bold,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "00000000000",
                            style: textStyle1Bold,
                          )),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.mail),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "البريد الالكتروني",
                          style: textStyle1Bold,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Aait@info.com",
                            style: textStyle1Bold,
                          )),
                    ),

                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.phone_android),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "مدينتك",
                          style: textStyle1Bold,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "already",
                            style: textStyle1Bold,
                          )),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ])));
  }
}
