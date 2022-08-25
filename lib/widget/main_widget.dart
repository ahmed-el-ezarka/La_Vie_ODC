

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import'package:flutter/material.dart';
import 'package:la_vie/screens/blogs_screen.dart';
import 'package:la_vie/screens/create_post.dart';
import 'package:la_vie/screens/home_screen.dart';
import 'package:la_vie/screens/leave_screen.dart';
import 'package:la_vie/screens/notifcation_screen.dart';
import 'package:la_vie/screens/profile_screen.dart';
import 'package:la_vie/screens/qr_code_screen.dart';

class MainWidget extends StatefulWidget {

  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();

}

class _MainWidgetState extends State<MainWidget> {
  int index= 2;
  final screens= const [
    BlogsScreen(),
    QrCodeScreen(),
    HomeScreen(),
    NotificationScreen(),
    CreatePost(),
  ];
  @override
  Widget build(BuildContext context) {
    final items=<Widget>[
      Image.asset('assets/leave.png'),
      Image.asset('assets/qr-code.png'),
      Image.asset('assets/home.png',color: Colors.black,),
      Image.asset('assets/notification.png'),
      Image.asset('assets/profile.png'),
    ];
    return SafeArea(
      top: false,
      child: ClipRect(
        child: Scaffold(
          body: screens[index],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              iconTheme: const IconThemeData(color: Colors.black),
            ),
            child: CurvedNavigationBar(
              animationCurve: Curves.easeInOut,
              buttonBackgroundColor: Colors.green,
              backgroundColor: Colors.greenAccent,
              height: 60,
              index: index,
              items:items,
              onTap: (index)=>setState(() {
                this.index=index;
              }),
            ),
          ),
        ),
      ),
    );
  }
}
