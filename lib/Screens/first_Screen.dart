import 'package:first_task/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:first_task/Utilities/Style.dart';
import '../Home_BNB.dart';
import 'Login_Screen.dart';
import 'Onboarding_Screen.dart';
import 'Register_Screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context)
          .push(new MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    }
  }

  @override
  void initState() {
    checkFirstSeen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F9),
      body: Stack(
        children: <Widget>[
          Positioned(
              right: -5,
              top: -5,
              child: RotatedBox(
                  quarterTurns: 1,
                  child: Image.asset(
                    "assets/images/shape.png",
                    width: 90,
                    height: 90,
                  ))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/logo_two.png",
                      width: 230,
                    ),
                    Button(
                      text: "انشاء حساب",
                      textStyle: textStyle1ForButtons,
                      widthOfButton: 180,
                      onPressed: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                      },
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Button(
                        onPressed: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        },
                        text: "تسجيل دخول",
                        textStyle: textStyle1ForButtons,
                        widthOfButton: 180),
                    SizedBox(
                      height: 15,
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => HomeBNB()));
                      },
                      child: Text("دخور كزائر", style: textStyle1Bold),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
