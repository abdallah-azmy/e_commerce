import 'package:first_task/Utilities/Style.dart';
import 'package:first_task/widgets/button.dart';
import 'package:flutter/material.dart';
import 'Login_Screen.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                          "تغيير كلمة المرور لتتمكن من تسجيل",
                          style: textStyle1Bold,
                        ),
                        Text(
                          "الدخول",
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
                              "كلمة المرور الجديدة",
                              style: textStyle1Bold,
                            )),
                        TextField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              hintText: "****************",
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
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Button(
                          onPressed: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                          },
                          text: "أرسال",
                          widthOfButton: 500,
                          hightOfButton: 45,
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
