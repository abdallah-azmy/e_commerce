import 'package:first_task/Utilities/Style.dart';
import 'package:flutter/material.dart';
import 'Added_Products_cart.dart';

class SpecificProduct extends StatefulWidget {
  @override
  _SpecificProductState createState() => _SpecificProductState();
}

class _SpecificProductState extends State<SpecificProduct> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Color(0xffF7F7F9),
          bottomNavigationBar: Container(
            color: Colors.white,
            height: 53,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: MaterialButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "اضف الي السلة",
                          style: textStyle1ForButtons,
                        ),
                      ],
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF313135)),
                        borderRadius: BorderRadius.circular(0)),
                    color: Color(0xFF313135),
                    padding: EdgeInsets.all(5),
                  ),
                )
              ],
            ),
          ),
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
                                padding:
                                    const EdgeInsets.only(top: 3, right: 3),
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
              Image.asset(
                "assets/images/1024.png",
                height: 185,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 15),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "اسم المنتج بالتفصيل الكامل",
                        style: textStyle1Bold,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    //shape: RoundedRectangleBorder(
                    //            side: BorderSide(width: 1, color: borderColor ?? Color(0xFF313135)),
                    //            borderRadius: BorderRadius.circular(0)),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 37,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color(0xffF7F7F9),
                              border:
                                  Border.all(width: 1, color: Colors.black)),
                          child: Center(
                            child: Text(
                              "ماركة",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Tajawal",
                                  color: Colors.black87),
                            ),
                          ),
                        ),
                        Container(
                          height: 37,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.black87,
                              border:
                                  Border.all(width: 1, color: Colors.black)),
                          child: Center(
                            child: Text(
                              "اسم الماركة",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Tajawal",
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "156 ريال",
                        style: textStyle1Bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              "التفاصيل",
                              style: textStyle1Bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة"
                              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة"
                              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
                              style: textStyle0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة"
                              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة"
                              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
                              style: textStyle0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              "التفاصيل",
                              style: textStyle1Bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة"
                              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة"
                              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
                              style: textStyle0,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
