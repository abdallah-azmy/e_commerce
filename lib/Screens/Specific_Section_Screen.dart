import 'package:first_task/Utilities/Style.dart';
import 'package:first_task/widgets/Product.dart';
import 'package:flutter/material.dart';
import 'Added_Products_cart.dart';

class SpecificSectionsScree extends StatefulWidget {
  @override
  _SpecificSectionsScreeState createState() => _SpecificSectionsScreeState();
}

class _SpecificSectionsScreeState extends State<SpecificSectionsScree> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xffF7F7F9),
        body: ListView(
          children: <Widget>[
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
                              padding: const EdgeInsets.only(top: 3, right: 3),
                              child: Text(
                                "المتجر",
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
              padding: const EdgeInsets.only(right: 25, top: 3),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "اسم المتجر بالتفصيل",
                  style: textStyle1Bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GridView.count(
              primary: false,
              shrinkWrap: true,
              physics: new NeverScrollableScrollPhysics(),
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
