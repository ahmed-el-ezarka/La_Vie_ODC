import 'package:flutter/material.dart';

class Blog1Screen extends StatelessWidget {
  const Blog1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 428,
                height: 299,
                child:
                Image.asset('assets/blog_screen.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('5 Simple Tips to treat plants'
              ,style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29,
              bottom: 16, top: 22,
              ),
              child: Text('leaf, in botany, any usually flattened green outgrowth from the stem of  ',
              style: TextStyle(
                color: Color(0xff7D7B7B),
                fontSize: 16,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29,
             top: 16,
              ),
              child: Text('leaf, in botany, any usually flattened green outgrowth from the stem of  ',
              style: TextStyle(
                color: Color(0xff7D7B7B),
                fontSize: 16,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29,
               top: 16,
              ),
              child: Text('leaf, in botany, any usually flattened green outgrowth from the stem of  ',
              style: TextStyle(
                color: Color(0xff7D7B7B),
                fontSize: 16,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29,
               top: 16,
              ),
              child: Text('leaf, in botany, any usually flattened green outgrowth from the stem of  ',
              style: TextStyle(
                color: Color(0xff7D7B7B),
                fontSize: 16,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29,
               top: 16,
              ),
              child: Text('leaf, in botany, any usually flattened green outgrowth from the stem of  ',
              style: TextStyle(
                color: Color(0xff7D7B7B),
                fontSize: 16,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29,
               top: 16,
              ),
              child: Text('leaf, in botany, any usually flattened green outgrowth from the stem of  ',
              style: TextStyle(
                color: Color(0xff7D7B7B),
                fontSize: 16,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
