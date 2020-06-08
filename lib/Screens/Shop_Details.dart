import 'package:first_task/Utilities/Style.dart';
import 'package:first_task/widgets/Comment_Card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Added_Products_cart.dart';
import 'Specific_Product.dart';

class ShopDetails extends StatefulWidget {
  @override
  _ShopDetailsState createState() => _ShopDetailsState();
}

class _ShopDetailsState extends State<ShopDetails> {
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      //////////////////////////// first tab ///////////////////////
      //////////////////////////// first tab ///////////////////////
      Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: GridView.count(
              primary: false,
              shrinkWrap: true,
              physics: new NeverScrollableScrollPhysics(),
              crossAxisSpacing: 7,
//              mainAxisSpacing: 1,
              crossAxisCount: 3,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => SpecificProduct()));
                  },
                  child: Image.asset(
                    "assets/images/three.png",
                    height: 85,
                    width: MediaQuery.of(context).size.width / 3.7,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => SpecificProduct()));
                  },
                  child: Image.asset(
                    "assets/images/unsplash.png",
                    height: 85,
                    width: MediaQuery.of(context).size.width / 3.7,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => SpecificProduct()));
                  },
                  child: Image.asset(
                    "assets/images/three.png",
                    height: 85,
                    width: MediaQuery.of(context).size.width / 3.7,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => SpecificProduct()));
                  },
                  child: Image.asset(
                    "assets/images/unsplash.png",
                    height: 85,
                    width: MediaQuery.of(context).size.width / 3.7,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => SpecificProduct()));
                  },
                  child: Image.asset(
                    "assets/images/three.png",
                    height: 85,
                    width: MediaQuery.of(context).size.width / 3.7,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => SpecificProduct()));
                  },
                  child: Image.asset(
                    "assets/images/three.png",
                    height: 85,
                    width: MediaQuery.of(context).size.width / 3.7,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => SpecificProduct()));
                  },
                  child: Image.asset(
                    "assets/images/unsplash.png",
                    height: 85,
                    width: MediaQuery.of(context).size.width / 3.7,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => SpecificProduct()));
                  },
                  child: Image.asset(
                    "assets/images/three.png",
                    height: 85,
                    width: MediaQuery.of(context).size.width / 3.7,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => SpecificProduct()));
                  },
                  child: Image.asset(
                    "assets/images/unsplash.png",
                    height: 85,
                    width: MediaQuery.of(context).size.width / 3.7,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => SpecificProduct()));
                  },
                  child: Image.asset(
                    "assets/images/three.png",
                    height: 85,
                    width: MediaQuery.of(context).size.width / 3.7,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => SpecificProduct()));
                  },
                  child: Image.asset(
                    "assets/images/three.png",
                    height: 85,
                    width: MediaQuery.of(context).size.width / 3.7,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => SpecificProduct()));
                  },
                  child: Image.asset(
                    "assets/images/three.png",
                    height: 85,
                    width: MediaQuery.of(context).size.width / 3.7,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      //////////////////////////// second tab ///////////////////////
      //////////////////////////// second tab ///////////////////////
      Column(
        children: <Widget>[
          CommentCard(),
          CommentCard(),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {},
              child: Text(
                "تعليقات أكثر",
                style: textStyle1Bold,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Align(
              alignment: Alignment.bottomLeft,
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
          )
        ],
      ),
      //////////////////////////// third tab ///////////////////////
      //////////////////////////// third tab ///////////////////////
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10),
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
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 1,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
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
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 1,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
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
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 1,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
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
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 1,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    ];

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
              padding: const EdgeInsets.only(right: 25, top: 0),
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
            Image.asset(
              "assets/images/img_one.png",
              height: 185,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
            Stack(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15, right: 10, bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.star,color: Colors.yellow,size: 17,),
                          SizedBox(
                            width: 1,
                          ),
                          Icon(Icons.star,color: Colors.yellow,size: 17,),
                          SizedBox(
                            width: 1,
                          ),
                          Icon(Icons.star,color: Colors.yellow,size: 17,),
                          SizedBox(
                            width: 1,
                          ),
                          Icon(Icons.star,color: Colors.yellow,size: 17,),
                          SizedBox(
                            width: 1,
                          ),
                          Icon(Icons.star,color: Colors.yellow,size: 17,),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "الرياض.السعودية.جدة",
                        style: textStyle1,
                      ),
                      InkWell(
                        child: Text(
                          "www.market.com",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 13,
                  top: 15,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(Icons.share),
                          SizedBox(
                            width: 7,
                          ),
                          Icon(Icons.favorite),
                          SizedBox(
                            width: 7,
                          ),
                          Icon(Icons.flag),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            DefaultTabController(
              length: 3,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    child: TabBar(
                      tabs: <Widget>[
                        Tab(
                          child: Text(
                            "المنتجات",
                            style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            " التقييم و الأراء",
                            style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "طرق التواصل",
                            style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1.4,
                    child: TabBarView(
                      children: tabs,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
