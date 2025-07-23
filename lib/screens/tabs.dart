


//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/color/app_color.dart';
import 'package:flutter_application_3/controller/tabs_controller.dart';
//import 'package:flutter_application_3/screens/library.dart';
//import 'package:flutter_application_3/screens/shorts.dart';
//import 'package:flutter_application_3/screens/subscriptions.dart';
//import 'package:flutter_application_3/screens/youtube_HP.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


 class Tabs extends StatelessWidget {

  final tc = Get.put(Tabcontroller());
   Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return  
    Obx((){
      return
    Scaffold(

      body:   tc.Screens[tc.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Appcolor.textcolor),
        selectedItemColor: Appcolor.textcolor,
        currentIndex: tc.selectedIndex.value,//_selectedIndex,
        onTap: tc.onItemTapped,
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
    );
  }
}