import 'package:flutter/material.dart';
import 'loginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatorToHome();
  }
  _navigatorToHome()async{
   await Future.delayed(Duration(milliseconds: 1500),(){});
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          CircleAvatar(backgroundImage: AssetImage("assets/images/logo.png",),radius: 100,),
           SizedBox(
            height: 25,
          ),
           Text("WelCome ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,color: Colors.blue[800] ),),
         
        ],
      ),
     ),
    );
  }
}