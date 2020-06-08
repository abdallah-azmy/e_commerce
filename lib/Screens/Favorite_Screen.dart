import 'package:first_task/widgets/StoreCard.dart';
import 'package:flutter/material.dart';
import 'Search.dart';
import 'Shop_Details.dart';
import 'Added_Products_cart.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
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
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[
                  StoreCard(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => ShopDetails()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                  StoreCard(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => ShopDetails()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                  StoreCard(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => ShopDetails()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                  StoreCard(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => ShopDetails()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                  StoreCard(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => ShopDetails()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                  StoreCard(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => ShopDetails()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                  StoreCard(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => ShopDetails()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                  StoreCard(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => ShopDetails()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                  StoreCard(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => ShopDetails()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                  StoreCard(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => ShopDetails()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Container(
                      height: 1,
                      color: Colors.grey[300],
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
