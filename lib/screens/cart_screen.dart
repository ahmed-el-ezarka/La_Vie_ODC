import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_vie/widget/main_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var add;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MainWidget()));
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
              'My Cart',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 29.0,
              right: 26,
              top: 20,
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
                      child: Image.asset('assets/cactus_plant.png'),
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
                            'Cactus plant',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 40,
                          bottom: 19,
                        ),
                        child: SizedBox(
                          width: 71,
                          height: 16,
                          child: Text(
                            '200 EGP',
                            style: TextStyle(
                              color: Color(0xff1ABC00),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:const Color(0xffF8F8F8),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  icon:const Icon(Icons.remove,
                                    size: 16,
                                    color: Colors.green,),
                                  onPressed: (){
                                    setState(() {
                                      add--;
                                    });
                                  },
                                ),
                                const Text('1',
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),),
                                IconButton(
                                  icon:const Icon(Icons.add,
                                    size: 16,
                                    color: Colors.green,),
                                  onPressed: (){
                                    setState(() {
                                      add++;
                                    });
                                  },

                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          IconButton(onPressed: (){},
                              icon:Image.asset('assets/delete.png')
                          ),
                        ],
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
              top: 20,
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
                      child: Image.asset('assets/cactus_plant.png'),
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
                            'Cactus plant',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 40,
                          bottom: 19,
                        ),
                        child: SizedBox(
                          width: 71,
                          height: 16,
                          child: Text(
                            '200 EGP',
                            style: TextStyle(
                              color: Color(0xff1ABC00),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:const Color(0xffF8F8F8),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  icon:const Icon(Icons.remove,
                                    size: 16,
                                    color: Colors.green,),
                                  onPressed: (){
                                    setState(() {
                                      add--;
                                    });
                                  },
                                ),
                                const Text('1',
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),),
                                IconButton(
                                  icon:const Icon(Icons.add,
                                    size: 16,
                                    color: Colors.green,),
                                  onPressed: (){
                                    setState(() {
                                      add++;
                                    });
                                  },

                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          IconButton(onPressed: (){},
                              icon:Image.asset('assets/delete.png')
                          ),
                        ],
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
              top: 33,
              bottom: 21,
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
                      child: Image.asset('assets/cactus_plant.png'),
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
                            'Cactus plant',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 40,
                          bottom: 19,
                        ),
                        child: SizedBox(
                          width: 71,
                          height: 16,
                          child: Text(
                            '200 EGP',
                            style: TextStyle(
                              color: Color(0xff1ABC00),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:const Color(0xffF8F8F8),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  icon:const Icon(Icons.remove,
                                    size: 16,
                                    color: Colors.green,),
                                  onPressed: (){
                                    setState(() {
                                      add--;
                                    });
                                  },
                                ),
                                const Text('1',
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),),
                                IconButton(
                                  icon:const Icon(Icons.add,
                                    size: 16,
                                    color: Colors.green,),
                                  onPressed: (){
                                    setState(() {
                                      add++;
                                    });
                                  },

                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          IconButton(onPressed: (){},
                              icon:Image.asset('assets/delete.png')
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: const[
             Padding(
               padding: EdgeInsets.only(left: 51.0),
               child: Text('Total',style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
               ),),
             ),
              Padding(
                padding: EdgeInsets.only(left: 180),
                child: Text('180,000',style: TextStyle(
                  fontSize: 16.25,
                  color: Color(0xff1ABC00),
                ),),
              ),
              SizedBox(width: 5,),
              Text('EGP',
                style: TextStyle(
                fontSize: 21.44,
                color: Color(0xff1ABC00),
              ),),
            ],
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,
            right: 41
            ),
            child: SizedBox(
              width: 500,
              height: 46.24,
              child: CupertinoButton.filled(
                //minSize: 80,//height
                  borderRadius: BorderRadius.circular(5),
                  child:const Text('Checkout ',
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                  onPressed: (){
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
