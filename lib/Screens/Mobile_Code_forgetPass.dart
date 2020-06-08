import 'package:first_task/Utilities/Style.dart';
import 'package:first_task/widgets/button.dart';
import 'package:flutter/material.dart';
import 'Change_Password.dart';

class MobilleCodeFP extends StatefulWidget {
  @override
  _MobilleCodeFPState createState() => _MobilleCodeFPState();
}

class _MobilleCodeFPState extends State<MobilleCodeFP> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xFFF7F7F9),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Positioned(
                  left: -9,
                  top: -9,
                  child: RotatedBox(
                      quarterTurns: 0,
                      child: Image.asset(
                        "assets/images/shape.png",
                        width: 90,
                        height: 90,
                      ))),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 70,
                    ),
                    Image.asset(
                      "assets/images/logo.png",
                      width: 235,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "ادخل الرمز الذي تم ارساله",
                          style: textStyle1Bold,
                        ),
                        Text(
                          "لك",
                          style: textStyle1Bold,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Column(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "كود التحقق",
                              style: textStyle1Bold,
                            )),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "00000000000",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Tajawal",
                                fontSize: 13.0,
                              ),
                              prefixIcon: Icon(
                                Icons.markunread_mailbox,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Button(
                            onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) => ChangePassword()));
                            },
                            text: "أرسال",
                            widthOfButton: 500,
                            hightOfButton: 45,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
