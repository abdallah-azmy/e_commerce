import 'package:first_task/Utilities/Style.dart';
import 'package:first_task/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Mobile_Code_forgetPass.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                          "نسيت كلمة مرورك ادخل",
                          style: textStyle1Bold,
                        ),
                        Text(
                          "هاتفك لأرساله",
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
                              "رقم الجوال",
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
                                FontAwesomeIcons.mobileAlt,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Button(
                            text: "أرسال",
                            onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) => MobilleCodeFP()));
                            },
                            widthOfButton: 500,
                            hightOfButton: 45,
                          ),
                        ),
                      ),
                    ),
//                    SizedBox(
//                      height: 20,
//                    ),
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
