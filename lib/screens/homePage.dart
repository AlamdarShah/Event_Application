import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 2;
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Events"),centerTitle: true,),
     
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.blue.shade700,
        
        selectedIndex: _currentIndex,
        
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.publish_outlined,color: Colors.white,),
            title: Text('Publish',style: TextStyle(color: Colors.white,fontSize: 16),),
            activeColor: Color.fromARGB(255, 0, 33, 82),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.app_registration_outlined,color: Colors.white,),
            title: Text('Booking',style: TextStyle(color: Colors.white,fontSize: 16),),
            activeColor:Color.fromARGB(255, 0, 33, 82),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.event_available_outlined,color: Colors.white,),
            title: Text(
              'Events ',style: TextStyle(color: Colors.white,fontSize: 16),
            ),
            activeColor:Color.fromARGB(255, 0, 33, 82),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person_outline,color: Colors.white,),
            title: Text('Profile',style: TextStyle(color: Colors.white,fontSize: 16),),
            activeColor: Color.fromARGB(255, 0, 33, 82),
            textAlign: TextAlign.center,
          ),
           BottomNavyBarItem(
            icon: Icon(Icons.settings,color: Colors.white,),
            title: Text('Settings',style: TextStyle(color: Colors.white,fontSize: 16),),
            activeColor: Color.fromARGB(255, 0, 33, 82),
            textAlign: TextAlign.center,
          ),
           
        ],
      ),
    );
  }
}