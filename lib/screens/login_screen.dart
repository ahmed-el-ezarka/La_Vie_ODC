import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_vie/screens/home_screen.dart';
import 'package:la_vie/widget/main_widget.dart';


class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with TickerProviderStateMixin{
final emailController= TextEditingController();
String password='';
bool isPasswordVisible = false;
final passwordController= TextEditingController();
final firstNameController= TextEditingController();
final lastNameController= TextEditingController();
@override
  void initState() {
    super.initState();
    emailController.addListener(() {setState(() {});});
  }
  @override
  Widget build(BuildContext context) {
    TabController _tabController =
    TabController(length: 2, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Image.asset('assets/plant1.png')),
            Image.asset('assets/logo.png'),
            const SizedBox(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    labelPadding: const EdgeInsets.only(
                        left: 20,right: 20
                    ),
                    labelColor: Colors.green,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Container(
                        height: 25.0,
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Sign up',
                        ),
                      ),
                      Container(
                        height: 25.0,
                        alignment: Alignment.centerRight,
                        child: const Text(
                          'Login',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ],
            ),
            const  SizedBox(height: 40,),
        Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              //first column is sign up screen

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 45,right: 46),
                    child:  TextField(
                      controller: firstNameController,
                      decoration: InputDecoration(
                        suffixIcon: firstNameController.text.isEmpty?
                        Container(width: 0,)
                            :IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: ()=>firstNameController.clear(),
                        ),
                        border:  const OutlineInputBorder(),
                        labelText: 'First Name',
                        hintText: 'Ahmed',
                        prefixIcon: const Icon(Icons.person),
                      ),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 45,right: 46),
                    child:  TextField(
                      controller: lastNameController,
                      decoration: InputDecoration(
                        suffixIcon: lastNameController.text.isEmpty?
                        Container(width: 0,)
                            :IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: ()=>lastNameController.clear(),
                        ),
                        border:  const OutlineInputBorder(),
                        labelText: 'Last Name',
                        hintText: 'El_Zarka',
                        prefixIcon: const Icon(Icons.person),
                      ),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  buildPassword(),
                  const SizedBox(height: 15,),
                  buildConfirmPassword(),
                  const  SizedBox(height: 15,),
                  SizedBox(
                    width: 500,
                    height: 46.24,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 45,right: 46),
                      child: CupertinoButton.filled(
                        //minSize: 80,//height
                          borderRadius: BorderRadius.circular(5),
                          child:const Text('Sign Up',
                            style: TextStyle(
                              fontSize: 15,
                            ),),
                          onPressed: (){
                            print('Email: ${emailController.text}');
                            print('Password: ${password}');
                          }),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: const <Widget>[
                      Expanded(
                          child: Divider()
                      ),
                      Text("or continue with"),
                      Expanded(
                          child: Divider()
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap:(){},
                          child: Container(
                            child: Image.asset('assets/facebook.png'),
                          ),
                        ),
                        SizedBox(width: 17,),
                        InkWell(
                          onTap:(){},
                          child: Container(
                            child: Image.asset('assets/google.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60,),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset('assets/plant2.png'),),
                ],
              ),

              //second column is login screen
              Column(
                children: [
                  buildEmail(),
                  const SizedBox(height: 24,),
                  buildPassword(),
                  const  SizedBox(height: 24,),
                  SizedBox(
                    width: 500,
                    height: 46.24,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 45,right: 46),
                      child: CupertinoButton.filled(
                        //minSize: 80,//height
                          borderRadius: BorderRadius.circular(5),
                          child:const Text('Login',
                            style: TextStyle(
                              fontSize: 15,
                            ),),
                          onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>MainWidget()),);
                            print('Email: ${emailController.text}');
                            print('Password: ${password}');
                          }),
                    ),
                  ),
                  const SizedBox(height: 28.61,),
                  Row(
                    children: const <Widget>[
                      Expanded(
                          child: Divider()
                      ),
                      Text("or continue with"),
                      Expanded(
                          child: Divider()
                      ),
                    ],
                  ),
              //    const SizedBox(height: 34.17,),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap:(){},
                            child: Container(
                              child: Image.asset('assets/facebook.png'),
                            ),
                        ),
                        SizedBox(width: 17,),
                        InkWell(
                            onTap:(){},
                            child: Container(
                              child: Image.asset('assets/google.png'),
                            ),
                        ),
                      ],
                    ),
                  ),
              SizedBox(height: 60,),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset('assets/plant2.png'),),
                ],
              ),
            ],
          ),
          ),
          ],
        ),
      ),
    );
  }
Widget buildEmail()=> Padding(
    padding: const EdgeInsets.only(left: 45,right: 46),
    child:  TextField(
      controller: this.emailController,
      decoration: InputDecoration(
        suffixIcon: emailController.text.isEmpty?
             Container(width: 0,)
            :IconButton(
             icon: const Icon(Icons.close),
          onPressed: ()=>emailController.clear(),
        ),
        border:  const OutlineInputBorder(),
        labelText: 'Email',
        hintText: 'name@example.com',
        prefixIcon: const Icon(Icons.email),
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
    ),
  );
Widget buildPassword()=>Padding(
  padding: const EdgeInsets.only(left: 45,right: 46),
  child:   TextField(
    onChanged: (value)=>setState(() {
      this.password=value;
    }),
    onSubmitted: (value)=>setState(() {
      this.password=value;
    }),
    decoration: InputDecoration(
      hintText: 'Your Password...',
      labelText: 'Password',
      //errorText: 'Password is wrong',
      suffixIcon: IconButton(
        icon: isPasswordVisible?
        const Icon(Icons.visibility_off):
        const Icon(Icons.visibility),
        onPressed: () {
          setState(() {
            isPasswordVisible=!isPasswordVisible;
          });
        },
      ),
      border: const OutlineInputBorder(),
    ),
    obscureText: isPasswordVisible,
  ),
);
Widget buildConfirmPassword()=>Padding(
  padding: const EdgeInsets.only(left: 45,right: 46),
  child:   TextField(
    onChanged: (value)=>setState(() {
      this.password=value;
    }),
    onSubmitted: (value)=>setState(() {
      this.password=value;
    }),
    decoration: InputDecoration(
      hintText: 'Repeat your Password...',
      labelText: 'Confirm password',
      //errorText: 'Password is wrong',
      suffixIcon: IconButton(
        icon: isPasswordVisible?
        const Icon(Icons.visibility_off):
        const Icon(Icons.visibility),
        onPressed: () {
          setState(() {
            isPasswordVisible=!isPasswordVisible;
          });
        },
      ),
      border: const OutlineInputBorder(),
    ),
    obscureText: isPasswordVisible,
  ),
);

}
