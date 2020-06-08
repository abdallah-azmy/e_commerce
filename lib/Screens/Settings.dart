import 'package:first_task/Utilities/Style.dart';
import 'package:flutter/material.dart';
import 'Added_Products_cart.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                    "اعدادات التطبيق",
                    style: textStyle1Bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, top: 5),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "هذا النص هو مثال لنص يمكن ان يستبدل",
                    style: textStyle1,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.brown, width: 2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "الاشعارات",
                                style: textStyle1Bold,
                              ),
                              Switch(
                                value: true,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "اعدادات اللغة",
                                style: textStyle1Bold,
                              ),
                              DropdownMenuItem(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 40,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "تغيير كلمة المرور",
                                style: textStyle1Bold,
                              ),
                              Container()
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey[400],
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 45,
                  child: MaterialButton(
                    color: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "غلق حسابك",
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 14,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ])));
  }
}
