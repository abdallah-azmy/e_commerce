import 'package:first_task/Utilities/Style.dart';
import 'package:first_task/widgets/button.dart';
import 'package:flutter/material.dart';

class DetailsOfOrderedProduct extends StatefulWidget {
  @override
  _DetailsOfOrderedProductState createState() =>
      _DetailsOfOrderedProductState();
}

class _DetailsOfOrderedProductState extends State<DetailsOfOrderedProduct> {
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
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Image.asset("assets/images/eleven.png"),
                  SizedBox(
                    width: 4,
                  ),
                  Image.asset("assets/images/eleven.png"),
                  SizedBox(
                    width: 4,
                  ),
                  Image.asset("assets/images/eleven.png"),
                  SizedBox(
                    width: 4,
                  ),
                  Image.asset("assets/images/eleven.png"),
                  SizedBox(
                    width: 4,
                  ),
                  Image.asset("assets/images/eleven.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "معلومات الطلب",
                  style: textStyle1Bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "الرقم  :  1",
                        style: textStyle1Bold,
                      )),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[200],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "المنتج بالتفاصيل    :    المعلومات",
                        style: textStyle1Bold,
                      )),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[400],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "تكلفة الطلبية           :    300 ريال",
                        style: textStyle1Bold,
                      )),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[200],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "تكلفة التوصيل         :    300 ريال",
                        style: textStyle1Bold,
                      )),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[400],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "وسيلة الدفع             :    عند الاستلام",
                        style: textStyle1Bold,
                      )),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[200],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "عدد المنتجات            :    4",
                        style: textStyle1Bold,
                      )),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[400],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "اسم المتجر               :   اوامر الشبكة",
                        style: textStyle1Bold,
                      )),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[200],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "رقم الهاتف               :    عند الاستعلام",
                        style: textStyle1Bold,
                      )),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[400],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "عنوان التوصيل        :    الرياض , جدة",
                        style: textStyle1Bold,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                      width: 290,
                      height: 180,
                      child: Image.asset(
                        "assets/images/1024.png",
                        fit: BoxFit.fitWidth,
                      )),
                ),
                Button(
                  text: "تعديل معلومات الطلب",
                ),
                SizedBox(
                  height: 12,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "الغاء الطلب",
                    style: textStyle1Bold,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
