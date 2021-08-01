import 'dart:async';
import 'package:finalprojet/2.dart';
import 'package:finalprojet/Dragnui/DargonScreen.dart';
import 'package:finalprojet/Dragon/model.dart';
import 'package:finalprojet/four.dart';
import 'package:finalprojet/three.dart';
import 'package:finalprojet/ui/Ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Home());


}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home://test(),
DragonScreen(),
//  SplashScreen(),
    );
  }

}
class SplashScreen extends StatefulWidget {

  @override

  _SplashScreenState createState() => _SplashScreenState();


}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Tow()));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:

      Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ( Image.asset('assets/images/plash.png',height: 500,)),
            SizedBox(height: 20,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white60),
            ),
          ],
        ),
      ),
    );
  }
}


