import 'package:flutter/material.dart';
import 'package:la_vie/screens/cart_screen.dart';
import 'package:la_vie/screens/exam_screens/question1_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {

    TabController _tabController =
    TabController(length: 4, vsync: this);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Center(
            child: Image.asset('assets/logo.png'),
          ),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>const Question1Screen(),),);
            }, icon: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color:Color(0xff1ABC00),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.question_mark_outlined,
                color:Colors.white,
               ),
            ),
            ),
          ],
        ),
        body: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 40,bottom: 36),
               child: Row(
                 children: [
                   Expanded(
                     child: Padding(
                       padding:EdgeInsets.only(left: 16,
                           ),
                       child:  Container(
                         width: 329,
                         height: 46,
                         color: Color(0xffF8F8F8),
                         child: TextField(
                           decoration: InputDecoration(
                             border:   OutlineInputBorder(),
                             hintText: 'Search',
                             prefixIcon:  Icon(Icons.search),
                           ),
                           keyboardType: TextInputType.text,
                           textInputAction: TextInputAction.done,
                         ),
                       ),
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 16),
                   child: Container(
                     decoration: BoxDecoration(
                       color: Color(0xff1ABC00),
                       borderRadius: BorderRadius.circular(10),
                     ),
                     width: 51,
                     height: 46,
                     child: IconButton(
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(
                             builder: (context)=>CartScreen()));
                       }, icon: Image.asset('assets/cart.png',color: Colors.white,),
                     ),
                   ),
                   ),

                 ],
               ),
             ),
             SizedBox(height:5 ,),
             Container(
               child: TabBar(
                 controller: _tabController,
                 labelColor: Colors.green,
                 unselectedLabelColor:
                 Colors.grey,
                 indicatorColor: Colors.transparent,
                   tabs: [
               Container(
                     width: 63,
                       height: 35,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         border: Border.all(
                           color: Color(0xff1ABC00),
                 width: 2,
               ),
                       ),
                       child: Center(
                           child: Text('All',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 16,
                           ),
                           ),
                       ),
                   ),
               Container(
                 width: 90,
                 height: 35,
                 decoration: BoxDecoration(
                   color: Color(0xffF8F8F8),
                   borderRadius: BorderRadius.circular(10),
                   border: Border.all(
                     color: Color(0xffF8F8F8),
                     width: 2,
                   ),
                 ),
                  child:   Center(
                 child: Text('Plants',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 16,
                 ),
               ),
             ),),
               Container(
                 width: 90,
                 height: 35,
                 decoration: BoxDecoration(
                   color: Color(0xffF8F8F8),
                   borderRadius: BorderRadius.circular(10),
                   border: Border.all(
                     color: Color(0xffF8F8F8),
                     width: 2,
                   ),
                 ),
                  child:   Center(
                 child: Text('Seeds',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 16,
                 ),
               ),
             ),),
               Container(
                 width: 90,
                 height: 35,
                 decoration: BoxDecoration(
                   color: Color(0xffF8F8F8),
                   borderRadius: BorderRadius.circular(10),
                   border: Border.all(
                     color: Color(0xffF8F8F8),
                     width: 2,
                   ),
                 ),
                  child:   Center(
                 child: Text('Tools',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 16,
                 ),
               ),
             ),),
                 ],
               ),
             ),
             SizedBox(height:10 ,),
             Container(
               width: double.maxFinite,
               height: 456,
               child: TabBarView(
                 controller: _tabController,
                 children: [
                   //for All Screen

                   Column(
                     children: [

                       GridView.builder(
                         itemCount: 4,
                         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: 2,
                           mainAxisSpacing: 74,
                           crossAxisSpacing: 14,
                         ),
                        itemBuilder: (context,index)=>buildCart(),
                         scrollDirection: Axis.vertical,
                         shrinkWrap: true,
                       ),
                     ],
                   ),
                   Tab(text: 'Plants',),
                   Tab(text: 'Seeds',),
                   Tab(text: 'Tools',),
                 ],
               ),
             ),

           ],
        ),
      ),
    );
  }
}
Widget buildCart(){
 int counter =1;
  return Stack(
    children: [
      Container(
        //height: height=mediaQuery. * 0.40,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
              ),
            ),
            Expanded(
              flex: 4,
              child: Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          child:               Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  // setState(() {
                                  //   if (counter > 0) {
                                  //     counter--;
                                  //   }
                                  // });
                                },
                                child: Container(
                                  color: Colors.white24,
                                  padding: EdgeInsets.all(8),
                                  child: Text('-'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0),
                                child: Text('$counter'),
                              ),
                              InkWell(
                                onTap: () {
                                  // setState(() {
                                  //   counter++;
                                  // });
                                },
                                child: Container(
                                  color: Colors.white24,
                                  padding: EdgeInsets.all(8),
                                  child: Text('+'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 18,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('GARDENIA PLANT'),
                              Text('70 EGP'),
                              RaisedButton(
                                child: Text('Add to cart'),
                                color: Colors.white24,
                                textColor: Colors.white,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        left: 0,
        child: Image.asset(
          'assets/cart1.png',),
      ),
    ],
  );
}