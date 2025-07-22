import 'package:flutter/material.dart';
import 'package:flutter_application_3/color/app_color.dart';
import 'package:flutter_application_3/custome/channelcircle.dart';
import 'package:flutter_application_3/custome/circle.dart';
import 'package:flutter_application_3/custome/textbutton.dart';
import 'package:flutter_application_3/custome/ytContainer.dart';
import 'package:flutter_application_3/custome/ytshorts.dart';
import 'package:flutter_application_3/routs/app_routs.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Subscriptions extends StatelessWidget {
  const Subscriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      backgroundColor: Appcolor.bgcolor,

      appBar: AppBar(
        leading: Image.asset("assets/images/youtubeimage.jpg"),
        title: Text(
          "YouTube",
          style: TextStyle(color: Appcolor.textcolor, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Appcolor.bgcolor,
        actions: [
          Icon(Icons.cast, color: Appcolor.textcolor, size: 25),

          SizedBox(width: 15),

          GestureDetector(
            onTap: (){
              //Navigator.pushNamed(context, AppRouts.notification);
              Get.toNamed(AppRouts.notification);
            },
            child: Icon(Icons.notifications, color: Appcolor.textcolor, size: 25),
          ),

          SizedBox(width: 15),
          Icon(Icons.search, color: Appcolor.textcolor, size: 25),
          SizedBox(width: 15),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          children: [
            SizedBox(height: 15),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Circle(url: "https://i.pinimg.com/736x/c6/db/6b/c6db6bdbb4c243e32ddda6f7d7cea44a.jpg"),
                      SizedBox(height: 10),
                      Text(
                        "T - series",
                        style: TextStyle(color: Appcolor.textcolor, fontSize: 12),
                      ),
                    ],
                  ),

                  SizedBox(width: 15),
                  Column(
                    children: [
                      Circle(url: "https://i.pinimg.com/736x/17/8e/c7/178ec74539c8e6df305d85f2860c07af.jpg"),
                      SizedBox(height: 10),
                      Text(
                        "Sony SAB",
                        style: TextStyle(color: Appcolor.textcolor, fontSize: 12),
                      ),
                    ],
                  ),

                  SizedBox(width: 15),
                  Column(
                    children: [
                      Circle(url: "https://i.pinimg.com/736x/ba/7c/58/ba7c5887bdf075054ea6f741984edef0.jpg"),
                      SizedBox(height: 10),
                      Text(
                        "Sony LIV",
                        style: TextStyle(color: Appcolor.textcolor, fontSize: 12),
                      ),
                    ],
                  ),

                  SizedBox(width: 15),
                  Column(
                    children: [
                      Circle(url: "https://i.pinimg.com/736x/d7/f0/fa/d7f0fa47418cfed785797673cf9207ed.jpg"),
                      SizedBox(height: 10),
                      Text(
                        "Shemar...",
                        style: TextStyle(color: Appcolor.textcolor, fontSize: 12),
                      ),
                    ],
                  ),

                  SizedBox(width: 15),
                  Column(
                    children: [
                      Circle(url: "https://i.pinimg.com/736x/61/ca/b8/61cab828a446d068d3177a48f7d066c5.jpg"),
                      SizedBox(height: 10),
                      Text(
                        "Cakes and...",
                        style: TextStyle(color: Appcolor.textcolor, fontSize: 12),
                      ),
                    ],
                  ),

                  SizedBox(width: 15),
                  Column(
                    children: [
                      Circle(url: "https://i.pinimg.com/736x/98/b1/4d/98b14d3bb1f9f78a9becae67e34c3540.jpg"),
                      SizedBox(height: 10),
                      Text(
                        "Tom and J...",
                        style: TextStyle(color: Appcolor.textcolor, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Textbuttonn(btext: "All", onpressed:(){},bgcolor: Appcolor.textcolor,textcolor: Colors.black,),

                  SizedBox(width: 10),
                  Textbuttonn(btext: "Today", onpressed: (){},),

                  SizedBox(width: 10),
                  Textbuttonn(btext: "Videos", onpressed: (){}),

                  SizedBox(width: 10),
                  Textbuttonn(btext: "Shorts", onpressed: (){}),

                  SizedBox(width: 10),
                  Textbuttonn(btext: "Live", onpressed: (){}),

                  SizedBox(width: 10),
                  Textbuttonn(btext: "Podcast", onpressed: (){}),
                ],
              ),
            ),

            SizedBox(height: 10),
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i.pinimg.com/736x/f0/b5/37/f0b537d88bba10bad7db890516babc2a.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.only(
                  left: 324,
                  right: 5,
                  top: 212,
                  bottom: 5,
                ),
                child: Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 233, 41, 27),
                    borderRadius: BorderRadius.circular(5),
                  ),

                  child: Row(
                    children: [
                      SizedBox(width: 3),
                      Icon(Icons.wifi_tethering, size: 15, color: Appcolor.textcolor),
                      SizedBox(width: 3),
                      Text(
                        "LIVE",
                        style: TextStyle(
                          color: Appcolor.textcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                Channelcircle(url: "https://i.pinimg.com/736x/ba/7c/58/ba7c5887bdf075054ea6f741984edef0.jpg"),

                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "The Kapil Sharma Show | Live",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Appcolor.textcolor, fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 100),
                        Icon(Icons.more_vert, color: Appcolor.textcolor),
                      ],
                    ),
                    Text(
                      "Sony Liv.98k watching",
                      style: TextStyle(color: Appcolor.subtextcolor),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 15),
                Container(
                  height: 30,
                  width: 30,
                  child: Image.network(
                    "https://i.pinimg.com/736x/07/f7/4a/07f74aa1ea6ffb1f0c51a70bb35f0dba.jpg",
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  "Shorts",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Appcolor.textcolor,
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Ytshorts(url: "https://i.pinimg.com/736x/84/02/da/8402dabab3dcfce8bf6531eab5af4574.jpg"),

                  SizedBox(width: 15),
                  Ytshorts(url: "https://i.pinimg.com/736x/3f/14/57/3f145789d32a5967487bcb6dc920a64c.jpg"),

                  SizedBox(width: 15),
                  Ytshorts(url: "https://i.pinimg.com/736x/ba/33/63/ba3363a19ffc9b1dd0ea3d230a879747.jpg"),
                ],
              ),
            ),

            SizedBox(height: 15),
           Ytcontainer(image:  "https://i.pinimg.com/736x/22/5d/31/225d31132d60a5b2f788fd468243631b.jpg"),

            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                Channelcircle(url: "https://i.pinimg.com/736x/97/90/cb/9790cb25ea7922fcaf28b24ccb76be47.jpg"),
                
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Travel with to Bali | Travel Vlog",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Appcolor.textcolor,
                          ),
                        ),
                        SizedBox(width: 95),
                        Icon(Icons.more_vert, color: Appcolor.textcolor),
                      ],
                    ),
                    Text(
                      "VM Vlogs.89k views.1 month ago",
                      style: TextStyle(color: Appcolor.subtextcolor),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 15),
          ],
        ),
      ),

    );
  }
}