import 'package:first_task/Utilities/Style.dart';
import 'package:first_task/widgets/AddedToCart.dart';
import 'package:first_task/widgets/button.dart';
import 'package:flutter/material.dart';
import 'Paying_Screen.dart';
import 'Specific_Product.dart';

class AddedProducts extends StatefulWidget {
  @override
  _AddedProductsState createState() => _AddedProductsState();
}

class _AddedProductsState extends State<AddedProducts> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xFFF7F7F9),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Column(
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
                                "السلة",
                                style: textStyle11,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "المنتجات المضافة",
                        style: textStyle1Bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: AddedToCart(
                            onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) => SpecificProduct()));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: AddedToCart(
                            onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) => SpecificProduct()));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: AddedToCart(
                            onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) => SpecificProduct()));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: AddedToCart(
                            onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) => SpecificProduct()));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: AddedToCart(
                            onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) => SpecificProduct()));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: AddedToCart(
                            onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) => SpecificProduct()));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: AddedToCart(
                            onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) => SpecificProduct()));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: AddedToCart(
                            onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) => SpecificProduct()));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: AddedToCart(
                            onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) => SpecificProduct()));
                            },
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
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 53,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Text(
                "الاجمالي",
                style: textStyle1Bold2,
              ),
              Text(
                "123 ريال",
                style: textStyle1Bold,
              ),
              Text(
                "10 منتجات",
                style: textStyle1,
              ),
              Button(
                text: "الدفع",
                widthOfButton: 75,
                hightOfButton: 100,
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => PayingScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
