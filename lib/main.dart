import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/createaccount.dart';
import 'package:flutter_application_3/screens/dummyscreen.dart';
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
import 'package:shared_preferences/shared_preferences.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure bindings initialized

  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');
  runApp(MyApp(token: token));

}

class MyApp extends StatelessWidget {
  final String? token;
  const MyApp({super.key, required this.token});
  
  

  
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(

      initialRoute: token == null ? "login_screen" : "/tabs",
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

