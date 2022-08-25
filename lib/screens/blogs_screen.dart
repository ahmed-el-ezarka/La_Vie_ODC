import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_vie/screens/blog1_screen.dart';
import 'package:la_vie/widget/main_widget.dart';

class BlogsScreen extends StatefulWidget {
  const BlogsScreen({Key? key}) : super(key: key);

  @override
  State<BlogsScreen> createState() => _BlogsScreenState();
}

class _BlogsScreenState extends State<BlogsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>MainWidget()));
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(left: 100.0),
          child: SizedBox(
            width: 74,
            height: 24,
            child: Text(
              'Blogs',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: ()=> Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Blog1Screen())),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 29.0,
                  right: 26,
                  top: 10,
                ),
                child: Container(
                  width: 373,
                  height: 161,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 11.0, bottom: 14, top: 14, right: 23),
                        child: SizedBox(
                          width: 146,
                          height: 133,
                          child: Image.asset('assets/blog1.png'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:   [
                          const Padding(
                            padding: EdgeInsets.only(
                              right: 18,
                              top: 28,
                              bottom: 16,
                            ),
                            child: SizedBox(
                              width: 115,
                              height: 20,
                              child: Text(
                                '2 days ago',
                                style: TextStyle(
                                  color: Color(0xff1ABC00),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 163,
                            height: 18,
                            child: Text(
                              '5 Tips to treat plants',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'leaf, in botany, any usually ',
                              style: TextStyle(
                                color: Color(0xff7D7B7B),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'leaf, in botany, any usually ',
                              style: TextStyle(
                                color: Color(0xff7D7B7B),
                                fontSize: 12,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 29.0,
                right: 26,
                top: 10,
              ),
              child: Container(
                width: 373,
                height: 161,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 11.0, bottom: 14, top: 14, right: 23),
                      child: SizedBox(
                        width: 146,
                        height: 133,
                        child: Image.asset('assets/blog2.png'),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:   [
                        const Padding(
                          padding: EdgeInsets.only(
                            right: 18,
                            top: 28,
                            bottom: 16,
                          ),
                          child: SizedBox(
                            width: 115,
                            height: 20,
                            child: Text(
                              '2 days ago',
                              style: TextStyle(
                                color: Color(0xff1ABC00),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 163,
                          height: 18,
                          child: Text(
                            '5 Tips to treat plants',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'leaf, in botany, any usually ',
                            style: TextStyle(
                              color: Color(0xff7D7B7B),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'leaf, in botany, any usually ',
                            style: TextStyle(
                              color: Color(0xff7D7B7B),
                              fontSize: 12,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 29.0,
                right: 26,
                top: 10,
              ),
              child: Container(
                width: 373,
                height: 161,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 11.0, bottom: 14, top: 14, right: 23),
                      child: SizedBox(
                        width: 146,
                        height: 133,
                        child: Image.asset('assets/blog3.png'),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:   [
                        const Padding(
                          padding: EdgeInsets.only(
                            right: 18,
                            top: 28,
                            bottom: 16,
                          ),
                          child: SizedBox(
                            width: 115,
                            height: 20,
                            child: Text(
                              '2 days ago',
                              style: TextStyle(
                                color: Color(0xff1ABC00),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 163,
                          height: 18,
                          child: Text(
                            '5 Tips to treat plants',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'leaf, in botany, any usually ',
                            style: TextStyle(
                              color: Color(0xff7D7B7B),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'leaf, in botany, any usually ',
                            style: TextStyle(
                              color: Color(0xff7D7B7B),
                              fontSize: 12,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 29.0,
                right: 26,
                top: 10,
              ),
              child: Container(
                width: 373,
                height: 161,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 11.0, bottom: 14, top: 14, right: 23),
                      child: SizedBox(
                        width: 146,
                        height: 133,
                        child: Image.asset('assets/blog4.png'),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:   [
                        const Padding(
                          padding: EdgeInsets.only(
                            right: 18,
                            top: 28,
                            bottom: 16,
                          ),
                          child: SizedBox(
                            width: 115,
                            height: 20,
                            child: Text(
                              '2 days ago',
                              style: TextStyle(
                                color: Color(0xff1ABC00),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 163,
                          height: 18,
                          child: Text(
                            '5 Tips to treat plants',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'leaf, in botany, any usually ',
                            style: TextStyle(
                              color: Color(0xff7D7B7B),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'leaf, in botany, any usually ',
                            style: TextStyle(
                              color: Color(0xff7D7B7B),
                              fontSize: 12,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
