import 'package:first_task/Utilities/Style.dart';
import 'package:first_task/widgets/button.dart';
import 'package:flutter/material.dart';
import 'Bill_Screen.dart';

class PayingScreen extends StatefulWidget {
  @override
  _PayingScreenState createState() => _PayingScreenState();
}

class _PayingScreenState extends State<PayingScreen> {
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
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "يوجد توصيل للطلب تابع للمتجر",
                            style: textStyle1Bold,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "تكلفة الخدمة 10 ريالات اضافية علي الطلب",
                            style: textStyle1,
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 10,
                            ),
                            Checkbox(
                                value: true,
                                activeColor: Colors.green,
                                onChanged: (bool newValue) {}),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "نعم",
                              style: textStyle1Bold,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Checkbox(
                                value: false,
                                activeColor: Colors.green,
                                onChanged: (bool newValue) {}),
                            Text(
                              "لا",
                              style: textStyle1Bold,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "سيتم التواصل معك عن طريق الهاتف ولكن يجب تحديد موقع التسليم علي الخريطة",
                              style: textStyle1Bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            height: 200,
                            child: Image.asset(
                              "assets/images/1024.png",
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.fitWidth,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "تم اضافة تكلفة التوصيل",
                              style: textStyle1Bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "تم تحديد التكلفة اختر طريقة الدفع",
                              style: textStyle1Bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 7,
                            ),
                            Checkbox(
                                value: true,
                                activeColor: Colors.green,
                                onChanged: (bool newValue) {}),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "نعم",
                              style: textStyle1Bold,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Checkbox(
                                value: false,
                                activeColor: Colors.green,
                                onChanged: (bool newValue) {}),
                            Text(
                              "لا",
                              style: textStyle1Bold,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "توجد عمولة اضافية عند الدفع اونلاين",
                              style: textStyle1Bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
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
                      builder: (context) => BillScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
