import 'package:first_task/Utilities/Style.dart';
import 'package:flutter/material.dart';
import 'Added_Products_cart.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
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
                    "كيف نساعدك ؟",
                    style: textStyle1Bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, top: 5),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "الأسئلة الأكثر شيوعا",
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
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "صيغة سؤال من المشكلات المواجهة في التطبيق ؟",
                              style: textStyle1Bold,
                            ),
                          ),
                          Text(
                            "هذا النص هو مثال لنص يمكن أن يستبدل",
                            style: textStyle0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "صيغة سؤال من المشكلات المواجهة في التطبيق ؟",
                              style: textStyle1Bold,
                            ),
                          ),
                          Text(
                            "هذا النص هو مثال لنص يمكن أن يستبدل",
                            style: textStyle0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "صيغة سؤال من المشكلات المواجهة في التطبيق ؟",
                              style: textStyle1Bold,
                            ),
                          ),
                          Text(
                            "هذا النص هو مثال لنص يمكن أن يستبدل",
                            style: textStyle0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "صيغة سؤال من المشكلات المواجهة في التطبيق ؟",
                              style: textStyle1Bold,
                            ),
                          ),
                          Text(
                            "هذا النص هو مثال لنص يمكن أن يستبدل",
                            style: textStyle0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "صيغة سؤال من المشكلات المواجهة في التطبيق ؟",
                              style: textStyle1Bold,
                            ),
                          ),
                          Text(
                            "هذا النص هو مثال لنص يمكن أن يستبدل",
                            style: textStyle0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "صيغة سؤال من المشكلات المواجهة في التطبيق ؟",
                              style: textStyle1Bold,
                            ),
                          ),
                          Text(
                            "هذا النص هو مثال لنص يمكن أن يستبدل",
                            style: textStyle0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "صيغة سؤال من المشكلات المواجهة في التطبيق ؟",
                              style: textStyle1Bold,
                            ),
                          ),
                          Text(
                            "هذا النص هو مثال لنص يمكن أن يستبدل",
                            style: textStyle0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "صيغة سؤال من المشكلات المواجهة في التطبيق ؟",
                              style: textStyle1Bold,
                            ),
                          ),
                          Text(
                            "هذا النص هو مثال لنص يمكن أن يستبدل",
                            style: textStyle0,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "صيغة سؤال من المشكلات المواجهة في التطبيق ؟",
                              style: textStyle1Bold,
                            ),
                          ),
                          Text(
                            "هذا النص هو مثال لنص يمكن أن يستبدل",
                            style: textStyle0,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                  )),
            ])));
  }
}
