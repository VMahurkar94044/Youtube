import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/library.dart';
import 'package:flutter_application_3/screens/shorts.dart';
import 'package:flutter_application_3/screens/subscriptions.dart';
import 'package:flutter_application_3/screens/youtube_HP.dart';
import 'package:get/get.dart';

class Tabcontroller extends GetxController
{
  var selectedIndex  = 0.obs;

   final RxList<Widget> Screens =[
    HomePage(),
    Shorts(),
    Center(child: Icon(Icons.add_circle_outline, size: 80, color: Colors.black)),
    Subscriptions(),
    //Center(child: Text("Subscriptions", style: TextStyle(color: Colors.black))),
    Lib(),
    ].obs;

  void onItemTapped (int index){
    
    selectedIndex.value = index;
  }

  int get selectedindex{
      return selectedIndex.value;
    }
}