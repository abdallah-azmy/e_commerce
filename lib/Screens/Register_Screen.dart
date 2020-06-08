import 'package:first_task/Utilities/Style.dart';
import 'package:first_task/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Mobile_Code_Regestration.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                        height: 70,
                      ),
                      Image.asset(
                        "assets/images/logo.png",
                        width: 235,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "assets/images/add_photo.png",
                          width: 100,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "اسم المستخدم",
                            style: textStyle1Bold,
                          )),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "أوامر الشبكة",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Tajawal",
                              fontSize: 13.0,
                            ),
                            prefixIcon: Icon(
                              FontAwesomeIcons.user,
                              color: Colors.black,
                            )),
                      ),
                      SizedBox(
                        height: 20,
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
                        height: 20,
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "البريد الألكتروني",
                            style: textStyle1Bold,
                          )),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "al.it.sa",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Tajawal",
                              fontSize: 13.0,
                            ),
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.black,
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "مدينتك",
                            style: textStyle1Bold,
                          )),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "already",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Tajawal",
                              fontSize: 13.0,
                            ),
                            prefixIcon: Icon(
                              Icons.location_on,
                              color: Colors.black,
                            )),
                      ),
                      SizedBox(
                        height: 20,
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
                              textDirection: TextDirection.ltr,
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
                        height: 60,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Button(
                          text: "تسجيل",
                          onPressed: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context) => MobileCode()));
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
