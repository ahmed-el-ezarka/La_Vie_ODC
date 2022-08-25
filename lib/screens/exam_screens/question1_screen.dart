import 'dart:math';

import 'package:flutter/material.dart';
import 'package:la_vie/screens/exam_screens/question2_screen.dart';

class Question1Screen extends StatefulWidget {
  const Question1Screen({Key? key}) : super(key: key);

  @override
  State<Question1Screen> createState() => _Question1ScreenState();
}

class _Question1ScreenState extends State<Question1Screen> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:  Center(
          child: const Text(
            'Course Exam',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 32.0,
              top: 31,
            ),
            child: Row(
              children: [
                const Text(
                  'Question ',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Image.asset('assets/1_10.png'),
                //Or
                // Text('1 ',style: TextStyle(
                //   fontSize: 36,
                //   color: Colors.green,
                // ),),
                // Text('/10 ',style: TextStyle(
                //   color: Colors.grey,
                // ),),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 38.0,
              top: 40,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'What is the user experience?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 49.0, bottom: 39.0),
            child: Container(
              height: 55,
              width: 360,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff1ABC00),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 10, bottom: 9, right: 14),
                    child: Container(
                      width: 287.25,
                      height: 36,
                      child: Text(
                        'The user experience is how the developer feels about a user.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 2, right: 12),
                      child: Transform.scale(
                        scale: 1.5,
                        child: Radio<int>(
                          value: 1,
                          fillColor: MaterialStateColor.resolveWith(
                            (states) => Color(0xff1ABC00),
                          ),
                          groupValue: selectedValue,
                          onChanged: (value) => setState(
                            () => selectedValue = 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only( bottom: 40.0),
            child: Container(
              height: 74,
              width: 360,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff1ABC00),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 10, bottom: 9, right: 14),
                    child: Container(
                      width: 268.6,
                      height: 54,
                      child: Text(
                        'The user experience is how the user feels about interacting with or experiencing a product.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 2,left: 8, right:2),
                      child: Transform.scale(
                        scale: 1.5,
                        child: Radio<int>(
                          value: 2,
                          fillColor: MaterialStateColor.resolveWith(
                            (states) => Color(0xff1ABC00),
                          ),
                          groupValue: selectedValue,
                          onChanged: (value) => setState(
                            () => selectedValue = 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only( bottom: 91.0),
            child: Container(
              height: 55,
              width: 360,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff1ABC00),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 10, bottom: 9, right: 14),
                    child: Container(
                      width: 287.25,
                      height: 36,
                      child: Text(
                        'The user experience is the attitude the UX designer has about a product.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 2, right: 12),
                      child: Transform.scale(
                        scale: 1.5,
                        child: Radio<int>(
                          value: 3,
                          fillColor: MaterialStateColor.resolveWith(
                            (states) => Color(0xff1ABC00),
                          ),
                          groupValue: selectedValue,
                          onChanged: (value) => setState(
                            () => selectedValue = 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 220.0,right: 26),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Question2Screen(),));
              },
              child: Container(
                width: 172,
                height: 43,
                decoration: BoxDecoration(
                  color: Color(0xff1ABC00),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('Next',style: TextStyle(
                    color: Colors.white,
                  ),),
                ),

              ),
            ),
          ),

        ],
      ),
    );
  }
}
