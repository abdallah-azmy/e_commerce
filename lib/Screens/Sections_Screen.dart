import 'package:first_task/Utilities/Style.dart';
import 'package:flutter/material.dart';
import 'Added_Products_cart.dart';
import 'Search.dart';
import 'Specific_Section_Screen.dart';

class SectionsScreen extends StatefulWidget {
  @override
  _SectionsScreenState createState() => _SectionsScreenState();
}

class _SectionsScreenState extends State<SectionsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: Material(
                color: Color(0xFFF7F7F9),
                child: Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/logo.png",
                          width: 110,
//                                height: 90,
                        )),
                    Positioned(
                      left: 40,
                      child: IconButton(
                        onPressed: () {
                          print("ddd");
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
                    Positioned(
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 4,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context) => Search()));
                          },
                          icon: Icon(
                            Icons.search,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => SpecificSectionsScree()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Stack(
                        children: <Widget>[
                          SizedBox(
                              height: 165,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                "assets/images/unsplash.png",
                                fit: BoxFit.fitWidth,
                              )),
                          Positioned(
                            left: 40,
                            bottom: 15,
                            child: Text(
                              "اسم القسم",
                              style: textStyle1ForButtons,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => SpecificSectionsScree()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Stack(
                        children: <Widget>[
                          SizedBox(
                              height: 165,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                "assets/images/unsplash.png",
                                fit: BoxFit.fitWidth,
                              )),
                          Positioned(
                            left: 40,
                            bottom: 15,
                            child: Text(
                              "اسم القسم",
                              style: textStyle1ForButtons,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => SpecificSectionsScree()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Stack(
                        children: <Widget>[
                          SizedBox(
                              height: 165,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                "assets/images/unsplash.png",
                                fit: BoxFit.fitWidth,
                              )),
                          Positioned(
                            left: 40,
                            bottom: 15,
                            child: Text(
                              "اسم القسم",
                              style: textStyle1ForButtons,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => SpecificSectionsScree()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Stack(
                        children: <Widget>[
                          SizedBox(
                              height: 165,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                "assets/images/unsplash.png",
                                fit: BoxFit.fitWidth,
                              )),
                          Positioned(
                            left: 40,
                            bottom: 15,
                            child: Text(
                              "اسم القسم",
                              style: textStyle1ForButtons,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => SpecificSectionsScree()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Stack(
                        children: <Widget>[
                          SizedBox(
                              height: 165,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                "assets/images/unsplash.png",
                                fit: BoxFit.fitWidth,
                              )),
                          Positioned(
                            left: 40,
                            bottom: 15,
                            child: Text(
                              "اسم القسم",
                              style: textStyle1ForButtons,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
