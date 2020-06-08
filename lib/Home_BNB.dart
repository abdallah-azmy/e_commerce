import 'package:first_task/Utilities/Style.dart';
import 'package:flutter/material.dart';
import 'Screens/About_The_App.dart';
import 'Screens/Contact_Us.dart';
import 'Screens/Favorite_Screen.dart';
import 'Screens/Main_Screen.dart';
import 'Screens/MyOrders_Screen.dart';
import 'Screens/Notifications_Screen.dart';
import 'Screens/Policies_And_Conditions.dart';
import 'Screens/Profile_Screen.dart';
import 'Screens/Questions.dart';
import 'Screens/Sections_Screen.dart';
import 'Screens/Settings.dart';
import 'Screens/Suggestions_Ideas.dart';

class HomeBNB extends StatefulWidget {
  final int index;

  const HomeBNB({Key key, this.index}) : super(key: key);

  @override
  _HomeBNBState createState() => _HomeBNBState();
}

class _HomeBNBState extends State<HomeBNB> {
  int _currentIndex = 0;

  final tabs = [
    MainScreen(),
    FavoriteScreen(),
    SectionsScreen(),
    MyOrders(),
  ];

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    setState(() {
      _currentIndex = widget.index ?? 0;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: _key,
        drawer: Opacity(
          opacity: .9,
          child: Drawer(
            child: Container(
              color: Color(0xff313135),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 20),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 23,
                          child: ClipOval(
                            child: Image.asset(
                              "assets/images/pic.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "اهلا بك في أوامر الشبكة",
                          style: textStyle1ForButtons,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 27, top: 35),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                          Navigator.pop(context);
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "الصفحة الرئيسية",
                              style: textStyle1ForButtons2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    color: Color(0xff7E6D5D),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 27, top: 12),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = 2;
                          Navigator.pop(context);
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.content_paste,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "الأقسام",
                              style: textStyle1ForButtons2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    color: Color(0xff7E6D5D),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 27, top: 12),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => Notifications()));
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "الاشعارات",
                              style: textStyle1ForButtons2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    color: Color(0xff7E6D5D),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 27, top: 12),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => Profile()));
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "الملف الشخصي",
                              style: textStyle1ForButtons2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    color: Color(0xff7E6D5D),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 27, top: 12),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => AboutTheApp()));
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.info,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "عن التطبيق",
                              style: textStyle1ForButtons2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    color: Color(0xff7E6D5D),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 27, top: 12),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => PoliciesAndConditions()));
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.account_balance,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "السياسة والشروط",
                              style: textStyle1ForButtons2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    color: Color(0xff7E6D5D),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 27, top: 12),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => Questions()));
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.device_unknown,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "اسئلة متكررة",
                              style: textStyle1ForButtons2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    color: Color(0xff7E6D5D),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 27, top: 12),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => ContactUs()));
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.contact_mail,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "تواصل معنا",
                              style: textStyle1ForButtons2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    color: Color(0xff7E6D5D),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 27, top: 12),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => SuggestionsAndIdeas()));
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.flash_on,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "الشكاوي و المقترحات",
                              style: textStyle1ForButtons2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    color: Color(0xff7E6D5D),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 27, top: 12),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => Settings()));
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "الاعدادات",
                              style: textStyle1ForButtons2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    color: Color(0xff7E6D5D),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 27, top: 12),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.call_missed_outgoing,
                            color: Colors.white,
                            size: 30,
                            textDirection: TextDirection.ltr,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "تسجيل الخروج",
                              style: textStyle1ForButtons2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                color: Color(0xffF7F7F9),
                child: tabs[_currentIndex],
              ),
              Positioned(
                right: 6,
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  onPressed: () {
                    _key.currentState.openDrawer();
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          backgroundColor: Color(0xff313135),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Column(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "الرئيسية",
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              title: Container(),
              activeIcon: Column(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "الرئيسية",
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            BottomNavigationBarItem(
                icon: Column(
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "المفضلة",
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                title: Container(),
                activeIcon: Column(
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "المفضلة",
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            BottomNavigationBarItem(
                icon: Column(
                  children: <Widget>[
                    Icon(
                      Icons.apps,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "الاقسام",
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                title: Container(),
                activeIcon: Column(
                  children: <Widget>[
                    Icon(
                      Icons.apps,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "الاقسام",
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            BottomNavigationBarItem(
                icon: Column(
                  children: <Widget>[
                    Icon(
                      Icons.assignment,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "طلباتي",
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                title: Container(),
                activeIcon: Column(
                  children: <Widget>[
                    Icon(
                      Icons.assignment,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "طلباتي",
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
