import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_vie/widget/main_widget.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({Key? key}) : super(key: key);

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
          padding: EdgeInsets.only(left: 60.0),
          child: SizedBox(
            width: 158,
            child: Text(
              'Create New Post',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 146,
            top: 21,
            ),
            child: InkWell(
              onTap: (){
                //todo add pic
              },
              child: Container(
                width: 136,
                height: 136,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xff1ABC00),
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.add,
                          color: Color(0xff1ABC00),
                        ),
                    ),
                    SizedBox(height: 9,),
                    Text('Add photo ',style: TextStyle(
                      color: Color(0xff1ABC00),
                    ),)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.only(left: 29.0),
            child: Text('Title',style: TextStyle(
             fontSize: 14,
            ),),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(
                left: 29,right: 27
            ),
            child:  TextField(
              decoration: InputDecoration(
                border:  const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
            ),
          ),
          SizedBox(height: 19,),
          Padding(
            padding: const EdgeInsets.only(left: 29.0),
            child: Text('Description',style: TextStyle(
              fontSize: 14,
            ),),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(
                left: 29,right: 27
            ),
            child:  TextField(
              maxLines: 4,
              decoration: InputDecoration(
                border:  const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
            ),
          ),
          SizedBox(height: 33,),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,
                right: 29
            ),
            child: SizedBox(
              width: 500,
              height: 46.24,
              child: CupertinoButton.filled(
                //minSize: 80,//height
                  borderRadius: BorderRadius.circular(5),
                  child:const Text('Post ',
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
