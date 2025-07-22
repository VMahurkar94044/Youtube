// import 'package:flutter/material.dart';
// import 'package:flutter_application_3/color/app_color.dart';
// import 'package:flutter_application_3/screens/library.dart';
// import 'package:flutter_application_3/screens/shorts.dart';
// import 'package:flutter_application_3/screens/subscriptions.dart';
// import 'package:flutter_application_3/screens/youtube_HP.dart';

// class Tabs extends StatelessWidget {
//   const Tabs({super.key});

//   int _selectedIndex  = 0;
//    final List<Widget> _Screens =[
//     HomePage(),
//     Shorts(),
//     Center(child: Icon(Icons.add_circle_outline, size: 80, color: Colors.black)),
//     Subscriptions(),
//     //Center(child: Text("Subscriptions", style: TextStyle(color: Colors.black))),
//     Lib(),
//     ];

//   void _onItemTapped (int index){
//     setState(() {
//         _selectedIndex = index;
//     });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body:   _Screens[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.black,
//         selectedIconTheme: IconThemeData(color: Appcolor.textcolor),
//         selectedItemColor: Appcolor.textcolor,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         type: BottomNavigationBarType.fixed,
//         unselectedItemColor: Appcolor.subtextcolor,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.play_arrow_rounded),
//             label: "Shorts",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add_circle_outline,size:30),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.subscriptions),
//             label: 'Subscriptions',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.video_library),
//             label: 'Library',
//           ),
          
//         ],
//       ),
//     );
//   }
// }



//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/color/app_color.dart';
import 'package:flutter_application_3/screens/library.dart';
import 'package:flutter_application_3/screens/shorts.dart';
import 'package:flutter_application_3/screens/subscriptions.dart';
import 'package:flutter_application_3/screens/youtube_HP.dart';


class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _selectedIndex  = 0;
   final List<Widget> _Screens =[
    HomePage(),
    Shorts(),
    Center(child: Icon(Icons.add_circle_outline, size: 80, color: Colors.black)),
    Subscriptions(),
    //Center(child: Text("Subscriptions", style: TextStyle(color: Colors.black))),
    Lib(),
    ];

  void _onItemTapped (int index){
    setState(() {
        _selectedIndex = index;
    });
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:   _Screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Appcolor.textcolor),
        selectedItemColor: Appcolor.textcolor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Appcolor.subtextcolor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow_rounded),
            label: "Shorts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline,size:30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Library',
          ),
          
        ],
      ),
    );
  }
}