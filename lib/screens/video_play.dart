//import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/color/app_color.dart';
import 'package:flutter_application_3/controller/subscribe_controller.dart';
import 'package:flutter_application_3/controller/ytplay_controller.dart';
import 'package:flutter_application_3/custome/channelcircle.dart';
import 'package:flutter_application_3/custome/myiconbutton.dart';
import 'package:flutter_application_3/custome/textbutton.dart';
//import 'package:flutter_application_3/custome/ytContainer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:video_player/video_player.dart';




class VideoPlay extends StatefulWidget {
  const VideoPlay({super.key});

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {


  final ytplay = Get.put(YtplayController());
  final sbc = Get.put(SubscribeController());
  
  late VideoPlayerController _videoController;
  bool isplaying = false;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(
      "assets/videos/videoplay1.mp4"
      )
      ..initialize().then((_) {
        setState(() {
          _isInitialized = true;
          _videoController.play();
        });
      });
  }
 
 @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }


  
  @override
  Widget build(BuildContext context) {
    return  
    Obx( (){
      return
    Scaffold(
      backgroundColor: Appcolor.secondarycolor,

      body: 
      SingleChildScrollView(scrollDirection: Axis.vertical,
      child: 
      Column(
      
        children: [

          SizedBox(height: 40,),
          AspectRatio(
            aspectRatio: 16 / 9,
            child:
                _isInitialized == true
                    ? VideoPlayer(_videoController)
                    : const Center(child: CircularProgressIndicator()),
            ),
            
           VideoProgressIndicator(_videoController, allowScrubbing: true),

          //Ytcontainer(image: "https://i.pinimg.com/736x/43/6f/21/436f21d4ecfc603bf5d4d71ebf4c3e4e.jpg"),

          SizedBox(height: 15,),
            
            Text("Sinchan funny episode | new episode | Episode\nnumber 393 | season 4",style: TextStyle(color: Appcolor.textcolor,fontWeight: FontWeight.bold,fontSize: 16),),
            
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 15,),
                Text("87K views.3 months ago",style: TextStyle(color: Appcolor.subtextcolor)),
                Text("  ...more",style: TextStyle(color: Appcolor.textcolor))
              ],
            ),

            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 15,),
                Channelcircle(url: "https://i.pinimg.com/736x/16/2d/a9/162da9a77151bb778234030173787c36.jpg"),
                SizedBox(width: 10,),
                Text("Sinchan_Fans",style: TextStyle(color: Appcolor.textcolor,fontSize: 16,fontWeight: FontWeight.bold)),
                SizedBox(width: 15,),
                Text("47.6 lakh",style: TextStyle(color: Appcolor.subtextcolor)),
                SizedBox(width: 40,),
                Textbuttonn(btext: sbc.text.value, onpressed: (){sbc.subscribed(); }, bgcolor: Appcolor.textcolor,textcolor: Appcolor.secondarycolor,)
              ],
            ),

            SizedBox(height: 5,),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: 
            Row(
              children: [
                SizedBox(width: 10,),
                Iconbuttonn(icon: ytplay.like.value == true ? Icons.thumb_up_alt_outlined : Icons.thumb_up, 
                btext: "Like", onpressed: (){ ytplay.likechange(); },textcolor: Appcolor.subtextcolor,bgcolor: const Color.fromARGB(255, 34, 34, 34),),

                SizedBox(width: 5,),
                Iconbuttonn(icon: ytplay.unlike.value == true ? Icons.thumb_down_alt_outlined : Icons.thumb_down, 
                btext: "Dislike", onpressed: (){ ytplay.unlikechange(); },textcolor: Appcolor.subtextcolor,bgcolor: const Color.fromARGB(255, 34, 34, 34),),
                
                SizedBox(width: 5,),
                Iconbuttonn(icon: Icons.share, btext: "Share", onpressed: (){},textcolor: Appcolor.subtextcolor,bgcolor: const Color.fromARGB(255, 34, 34, 34),),
                SizedBox(width: 5,),
                Iconbuttonn(icon: Icons.download, btext: "Download", onpressed: (){},textcolor: Appcolor.subtextcolor,bgcolor: const Color.fromARGB(255, 34, 34, 34),),
                SizedBox(width: 5,),
                Iconbuttonn(icon: Icons.save_alt_outlined, btext: "Save", onpressed: (){},textcolor: Appcolor.subtextcolor,bgcolor: const Color.fromARGB(255, 34, 34, 34),),
                SizedBox(width: 5,),
                Iconbuttonn(icon: Icons.flag_outlined, btext: "Report", onpressed: (){},textcolor: Appcolor.subtextcolor,bgcolor: const Color.fromARGB(255, 34, 34, 34),),

              ],
            )
            )

        ],
      ),
     )
      );
    }
    );
    
  }
}