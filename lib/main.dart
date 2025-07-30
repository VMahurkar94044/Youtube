import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/createaccount.dart';
import 'package:flutter_application_3/screens/forgotpassscreen.dart';
import 'package:flutter_application_3/screens/library.dart';
import 'package:flutter_application_3/screens/login_screen.dart';
//import 'package:flutter_application_3/screens/news_screen.dart';
import 'package:flutter_application_3/screens/notification.dart';
import 'package:flutter_application_3/screens/shorts.dart';
import 'package:flutter_application_3/screens/subscriptions.dart';
import 'package:flutter_application_3/screens/tabs.dart';
import 'package:flutter_application_3/screens/video_play.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      initialRoute: "/",
      routes: {
        "/" : (context) => LoginScreen(),
        "/login_screen" : (context) => LoginScreen(),
        "/shorts" : (context) => Shorts(),
        "/subscriptions" : (context) => Subscriptions(),
        "/library" : (context) => Lib(),
        "/notification" : (context) => Noti(),
        "/tabs" : (context) => Tabs(),
        "/forgotpassword" : (context) => Forgotpassscreen(),
        "/videoplay" : (context) => VideoPlay(),
        "/createaccount" : (context) => Createaccount(),

      },

      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 183, 125)),
      ),
      debugShowCheckedModeBanner: false,
      //home : Tabs()
    
    );
  }
}

