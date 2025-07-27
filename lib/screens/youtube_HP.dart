import 'package:flutter/material.dart';
import 'package:flutter_application_3/color/app_color.dart';
import 'package:flutter_application_3/custome/channelcircle.dart';
import 'package:flutter_application_3/custome/ytContainer.dart';
import 'package:flutter_application_3/custome/ytshorts.dart';
import 'package:flutter_application_3/routs/app_routs.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  Future<void> logout() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.clear(); 
   prefs.remove('token');
  Get.offNamed(AppRouts.login_screen); // Redirect to login screen
}
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: Appcolor.bgcolor,

      appBar: AppBar(
        
        leading: Image.asset("assets/images/youtubeimage.jpg"),
        title: Text(
          "YouTube",
          style: TextStyle(color: Appcolor.textcolor, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        actions: [
          GestureDetector(
            onTap: (){
              //Navigator.pushNamed(context, AppRouts.notification);
              Get.toNamed(AppRouts.notification);
            },
            child: Icon(Icons.notifications,color: Appcolor.textcolor,size: 30,)),
          Icon(Icons.search, color: Appcolor.textcolor, size: 30),
          IconButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: "Logout",
                    middleText: "Are you sure you want to logout?",
                    textConfirm: "Yes",
                    textCancel: "No",
                    confirmTextColor: Colors.white,
                    onConfirm: () {
                      logout();
                    },
                  );
                },
                icon: Icon(Icons.more_vert),
                iconSize: 30,
                color: Colors.white,
              ),
          
          ],
          
      ),

      body: 
      SingleChildScrollView( scrollDirection: Axis.vertical,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                //Navigator.pushNamed(context, AppRouts.VideoPlay);
                Get.toNamed(AppRouts.VideoPlay);
              },
              child: Ytcontainer(image: "https://i.pinimg.com/736x/43/6f/21/436f21d4ecfc603bf5d4d71ebf4c3e4e.jpg")),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 15,),
                Channelcircle(url: "https://i.pinimg.com/736x/16/2d/a9/162da9a77151bb778234030173787c36.jpg"),
                SizedBox(width: 10,),
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sinchan funny episode | new episode",style: TextStyle(color: Appcolor.textcolor,fontWeight: FontWeight.bold),),
                    Text("Sinchan_Fans.87K views.3 months ago",style: TextStyle(color: Appcolor.subtextcolor),)
                  ],
                )
              ],
            ),
        
            SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(width: 15),
                  Container(
                    height: screenheight * 0.08,
                    width: screenwidth * 0.08,
                    child: Image.network(
                      "https://i.pinimg.com/736x/07/f7/4a/07f74aa1ea6ffb1f0c51a70bb35f0dba.jpg",
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Shorts",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Appcolor.textcolor),
                  ),
                  SizedBox(width: 230),
                  Icon(Icons.more_vert, color: Appcolor.textcolor),
                ],
              ),
        
              SizedBox(height: 15,),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: 
              Row(
                children: [
                  Ytshorts(url: "https://i.pinimg.com/736x/be/00/a0/be00a07583797aaf4dde5158f0c5c209.jpg"),
                  SizedBox(width: 15,),
                  Ytshorts(url: "https://i.pinimg.com/736x/7c/cd/59/7ccd59241784ce5e2a77a964391aabe1.jpg"),
                  SizedBox(width: 15,),
                  Ytshorts(url: "https://i.pinimg.com/736x/a7/d6/53/a7d65348b69db152648c2f5aaf055894.jpg"),
                  SizedBox(width: 15,),
                  Ytshorts(url: "https://i.pinimg.com/736x/36/90/40/369040aaef06cdd52c4e044184cd0ef5.jpg")
                ],
              )
              ),

              SizedBox(height: 20,),
              Ytcontainer(image: "https://i.pinimg.com/736x/53/27/2f/53272fa3dcfc010683e6979af9b5f3e9.jpg"),
              SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 15,),
                Channelcircle(url: "https://i.pinimg.com/1200x/08/38/9a/08389ae7a757f741f6fdf80cb4f78f8b.jpg"),
                SizedBox(width: 10,),
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Doraemon episode | new episode",style: TextStyle(color: Appcolor.textcolor,fontWeight: FontWeight.bold),),
                    Text("Doraraa.45K views.2 months ago",style: TextStyle(color: Appcolor.subtextcolor),)
                  ],
                ),
                Spacer(),
                Icon(Icons.more_vert, color: Appcolor.textcolor)
              ],
            ),
            
            SizedBox(height: 20,),
              Ytcontainer(image: "https://i.pinimg.com/736x/b0/30/cf/b030cf7f901cc2fd11fbe7ef3f743a35.jpg"),
              SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 15,),
                Channelcircle(url: "https://i.pinimg.com/736x/0f/59/ee/0f59eef33f20bf13e4851bf0494b9ced.jpg"),
                SizedBox(width: 10,),
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Disnip's Mickey Mouse Club house || New\nShow",style: TextStyle(color: Appcolor.textcolor,fontWeight: FontWeight.bold),),
                    Text("Mickey.8K views.8 months ago",style: TextStyle(color: Appcolor.subtextcolor),)
                  ],
                ),
                Spacer(),
                Icon(Icons.more_vert, color: Appcolor.textcolor)
              ],
            ),

            SizedBox(height: 20,),
              Ytcontainer(image: "https://i.pinimg.com/1200x/e1/08/a9/e108a939db55fcaec59992f8cea6963d.jpg"),
              SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 15,),
                Channelcircle(url: "https://i.pinimg.com/1200x/97/42/b8/9742b880c8436ba20da9372e4c4f086b.jpg"),
                SizedBox(width: 10,),
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Moothu Aur Patluu ki Jodii || New Episode\n|| Motu eating samosa",style: TextStyle(color: Appcolor.textcolor,fontWeight: FontWeight.bold),),
                    Text("Nickelodeon.78K views.2 years ago",style: TextStyle(color: Appcolor.subtextcolor),)
                  ],
                ),
                Spacer(),
                Icon(Icons.more_vert, color: Appcolor.textcolor)
              ],
            ),

            SizedBox(height: 20,),
              Ytcontainer(image: "https://i.pinimg.com/1200x/d7/84/b6/d784b6c9609689a9c031a6d8373770eb.jpg"),
              SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 15,),
                Channelcircle(url: "https://i.pinimg.com/736x/37/14/c4/3714c4f90135d9e3fab5fb81c73efef8.jpg"),
                SizedBox(width: 10,),
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ninja Hattori New Episode In Hindi || Ninja\nhattori full episode || session 03 ",style: TextStyle(color: Appcolor.textcolor,fontWeight: FontWeight.bold),),
                    Text("Ninja Kids.59K views.1.5 year ago",style: TextStyle(color: Appcolor.subtextcolor),)
                  ],
                ),
                Spacer(),
                Icon(Icons.more_vert, color: Appcolor.textcolor)
              ],
            ),

            SizedBox(height: 20,),
              Ytcontainer(image: "https://i.pinimg.com/736x/c8/49/58/c84958b82b537bab85df4d6885e9f83b.jpg"),
              SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 15,),
                Channelcircle(url: "https://i.pinimg.com/1200x/2c/4f/17/2c4f17842ad2f06ceeed2edca3112aa0.jpg"),
                SizedBox(width: 10,),
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Chhota Bheem aur Krishna v/s Zimbara\nin Sundarban",style: TextStyle(color: Appcolor.textcolor,fontWeight: FontWeight.bold),),
                    Text("Kids Television.4K views.11 months ago",style: TextStyle(color: Appcolor.subtextcolor),)
                  ],
                ),
                Spacer(),
                Icon(Icons.more_vert, color: Appcolor.textcolor)
              ],
            ),
            
            SizedBox(height: 20,),

        
          ],
        ),
      ),

    );
  }
}