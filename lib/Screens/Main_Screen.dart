import 'package:first_task/Utilities/Style.dart';
import 'package:first_task/widgets/Product.dart';
import 'package:flutter/material.dart';
import 'Added_Products_cart.dart';
import 'Search.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/img_one.png",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "الأحدث",
                        style: textStyle1Bold,
                      ),
                      Text(
                        "مشاهدة الكل",
                        style: textStyle1Bold,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 1.1,
                    child: GridView.count(
                      primary: false,
                      shrinkWrap: true,
                      physics: new NeverScrollableScrollPhysics(),
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                      crossAxisCount: 3,
                      children: <Widget>[
                        Product(),
                        Product(
                          imageLink: "assets/images/unsplash.png",
                        ),
                        Product(),
                        Product(),
                        Product(
                          imageLink: "assets/images/unsplash.png",
                        ),
                        Product(
                          imageLink: "assets/images/unsplash.png",
                        ),
                        Product(),
                        Product(),
                        Product(
                          imageLink: "assets/images/unsplash.png",
                        ),
                        Product(
                          imageLink: "assets/images/unsplash.png",
                        ),
                        Product(),
                        Product(
                          imageLink: "assets/images/unsplash.png",
                        ),
                        Product(),
                        Product(
                          imageLink: "assets/images/unsplash.png",
                        ),
                        Product(),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
