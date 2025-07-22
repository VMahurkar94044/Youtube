import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/color/app_color.dart';
import 'package:flutter_application_3/controller/subscribe_controller.dart';
import 'package:flutter_application_3/custome/channelcircle.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Shorts extends StatelessWidget {
  //final SubscribeController sbc = SubscribeController();
  final sbc = Get.put(SubscribeController());

   Shorts({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    Obx( () {
      return Scaffold(

      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Appcolor.textcolor, size: 30),
        //Image.network("https://i.pinimg.com/736x/07/f7/4a/07f74aa1ea6ffb1f0c51a70bb35f0dba.jpg"),
        //title: Text("Shorts",style: TextStyle(color: Appcolor.textcolor),),
        backgroundColor: Colors.black,
        actions: [
          Row(
            children: [
              Icon(Icons.search, color: Appcolor.textcolor, size: 30),
              SizedBox(width: 10),
              Icon(Icons.more_vert, color: Appcolor.textcolor, size: 30),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),

      body: 
      
      
         Container(
          height: 800,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://i.pinimg.com/originals/e5/69/db/e569db88583ec87c4b2b355e7ca29445.gif",
              ),
              fit: BoxFit.fill,
            ),
          ),
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: 15),
                 Channelcircle(url: "https://i.pinimg.com/736x/a6/a9/8c/a6a98c4c3d51c4a205ead18eafd8b7c0.jpg"),
        
                  SizedBox(width: 5),
                  Text(
                    sbc.channel.value,
                    style: TextStyle(
                      color: Appcolor.textcolor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
        
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {
                      Get.snackbar("thanks","for subscribing ${sbc.channel} ",backgroundColor: Colors.white);
                      print("yess");
                     sbc.subscribed(); 
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                    ),
                    child: Text(
                      "${sbc.text}",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ],
              ),
        
              Row(
                children: [
                  SizedBox(width: 15),
        
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                      sbc.discription.value,
                        style: TextStyle(fontSize: 14, color: Appcolor.textcolor),
                      ),
                      Text(
                        sbc.discription2.value,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Appcolor.textcolor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
        
                  SizedBox(width: 55),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.pinimg.com/736x/2f/01/34/2f01343f75ac07c6d18510017c5a2b58.jpg",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
        
              SizedBox(height: 10),
            ],
          ),
        ),
      

    );
    }
      );
  }
}