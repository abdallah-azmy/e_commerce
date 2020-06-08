import 'package:first_task/Utilities/Style.dart';
import 'package:first_task/widgets/StoreCard.dart';
import 'package:flutter/material.dart';
import 'Shop_Details.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Color(0xffF7F7F9),
          body: SafeArea(
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5, left: 5),
                      child: Material(
                          color: Color(0xFFF7F7F9),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 7,
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.3,
                                  height: 37,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: "متجر سيارات",
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Tajawal",
                                        fontSize: 16.0,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.cancel,
                                        color: Colors.black87,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.shopping_basket,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "الغاء",
                                      style: textStyle1Bold2,
                                    )),
                              )
                            ],
                          )),
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
            ),
          ),
        ));
  }
}
