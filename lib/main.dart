import 'package:flutter/material.dart';
import 'package:la_vie/network/dio_helper.dart';
import 'package:la_vie/screens/login_screen.dart';

void main() {
  runApp(
      const MyApp());
      DioHelper.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
          future: Future.delayed(const Duration(seconds: 1)),
          builder: (ctx, timer) => timer.connectionState == ConnectionState.done
              ?  LoginScreen() //Screen to navigate to once the splashScreen is done.
              : Container(
            color: Colors.white,
            child: const Image(
              image: AssetImage('assets/logo.png'),
            ),
          )),
    );
  }
}


