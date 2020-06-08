import 'package:first_task/Utilities/Style.dart';
import 'package:first_task/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Home_BNB.dart';
import 'Forget_Password_Screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xFFF7F7F9),
        body: SafeArea(
          child: SingleChildScrollView(
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
                              "الصفحة السابقة",
                              style: textStyle1Bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                      ),
                      Image.asset(
                        "assets/images/logo.png",
                        width: 235,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "تسجيل الدخول",
                        style: textStyle1Bold,
                      ),
                      SizedBox(
                        height: 40,
                      ),
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
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "كلمة المرور",
                            style: textStyle1Bold,
                          )),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "***************",
                            suffixIcon: Icon(
                              FontAwesomeIcons.solidEyeSlash,
                              size: 15,
                              color: Colors.black,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Tajawal",
                              fontSize: 13.0,
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: FlatButton(
                          child: Text(
                            "نسيت كلمة المرور ؟",
                            style: textStyle1Bold,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context) => ForgetPassword()));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Button(
                          text: "دخول",
                          onPressed: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context) => HomeBNB()));
                          },
                          widthOfButton: 500,
                          hightOfButton: 45,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
