import 'package:first_task/widgets/DiscreptionOfProduct.dart';
import 'package:flutter/material.dart';
import 'Details_Of_Ordered_Product.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    List<Widget> screensOfMyOrders = [
      Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DescreptionOfProduct(
              text: "حذف",
              onPressed: () {
                print("button");
              },
              cardPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => DetailsOfOrderedProduct()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DescreptionOfProduct(
              text: "حذف",
              onPressed: () {
                print("button");
              },
              cardPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => DetailsOfOrderedProduct()));
              },
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DescreptionOfProduct(
              text: "اعادة الطلب الي السلة",
              onPressed: () {
                print("button");
              },
              cardPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => DetailsOfOrderedProduct()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DescreptionOfProduct(
              text: "اعادة الطلب الي السلة",
              onPressed: () {
                print("button");
              },
              cardPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => DetailsOfOrderedProduct()));
              },
            ),
          ),
        ],
      ),
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFFF7F7F9),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  "طلبات في انتظار الموافقة",
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "طلبات منفذة",
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
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    ///////////////////////////////////////////////////////////////////////////////
                    height: MediaQuery.of(context).size.height * 1.2,
                    child: TabBarView(
                      children: screensOfMyOrders,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
