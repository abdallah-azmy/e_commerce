import 'package:flutter/material.dart';
import 'first_Screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.pushReplacement(
        context,
        new MaterialPageRoute(
            builder: (BuildContext context) => FirstScreen()));
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            'assets/images/$assetName.png',
            width: 200.0,
          )),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle =
        TextStyle(fontSize: 16.0, fontFamily: "Tajawal", color: Colors.black87);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w700,
          fontFamily: "Tajawal",
          color: Colors.black87),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xFFF7F7F9),
      imagePadding: EdgeInsets.zero,
    );

    return Directionality(
      textDirection: TextDirection.rtl,
      child: IntroductionScreen(
        showSkipButton: false,
        key: introKey,
        pages: [
          PageViewModel(
            title: "أهلا بك",
            body:
                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى"
                "، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص",
            image: _buildImage('logo'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "جملة تعريفية بخطوات التطبيق",
            body:
                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى"
                "، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص",
            image: _buildImage('logo'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "جملة تعريفية بخطوات التطبيق",
            bodyWidget: Text(
                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى"
                "، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص",
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: "Tajawal",
                    color: Colors.black87)),
            image: _buildImage('logo'),
            decoration: pageDecoration,
          ),
        ],
        onDone: () => _onIntroEnd(context),
        //onSkip: () => _onIntroEnd(context), // You can override onSkip callback

        skipFlex: 0,
        nextFlex: 0,

        next: const Icon(Icons.arrow_forward),
        done: const Text('تخطي',
            style: TextStyle(fontSize: 20.0, fontFamily: "Tajawal")),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Colors.black87,
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}
