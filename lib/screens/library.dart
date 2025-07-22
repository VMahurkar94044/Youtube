import 'package:flutter/material.dart';
import 'package:flutter_application_3/color/app_color.dart';
import 'package:flutter_application_3/custome/myiconbutton.dart';

class Lib extends StatelessWidget {
  const Lib({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Appcolor.bgcolor,

      appBar: AppBar(
        backgroundColor: Appcolor.bgcolor,
        
       actions: [
        Icon(Icons.cast,color: Appcolor.textcolor,size: 25,),
        SizedBox(width: 15,),
        Icon(Icons.notifications,color: Appcolor.textcolor,size: 25,),
        SizedBox(width: 15,),
        Icon(Icons.search,color: Appcolor.textcolor,size: 25,),
        SizedBox(width: 15,),
        Icon(Icons.settings,color: Appcolor.textcolor,size: 25,),
        SizedBox(width: 15,)
        ],
      ),


//////////////////////////////////////body/////////////////////////////////////////////
      body: 
////////////////////////////////main column //////////////////////////////////////    
      SingleChildScrollView(scrollDirection: Axis.vertical,
      child:
      Column(
        children: [
         Row(
///////////////////////////////////profile photo/////////////////////////////

          children: [
            SizedBox(width: 10,),
            Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/vaishnavi.jpg"),fit: BoxFit.cover)),
       ),
        SizedBox(width: 15,),

///////////////////////////bold name////////////////////
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Text("Vaishnavi Mahurkar",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Appcolor.textcolor),),
         
///////////////////////////channel name/////////////////////////        
         RichText(text: TextSpan(
          children: [
            TextSpan(
          text: "@vaishmahurkar",
          style: TextStyle(color: Appcolor.subtextcolor,fontSize: 16,),
           ),

           TextSpan(
            text: "  •  view channel >",
            style: TextStyle(color: Appcolor.subtextcolor,fontSize: 14,)
            
           )
          ]
         
         )
         )
        ],
       )
      
          ],
         ),
          
        SizedBox(height: 15,),
        
/////////////////////////buttonssss////////////////////////////////////        
        SingleChildScrollView(scrollDirection: Axis.horizontal,
        child:
        Row(
          children: [

            SizedBox(width: 10,),
            Iconbuttonn(icon: Icons.switch_account, btext: "Switch account", onpressed: (){}, ),

            SizedBox(width: 10,),
            Iconbuttonn(icon: Icons.g_mobiledata, btext: "Google account", onpressed: (){}, iconsize: 25,),

            SizedBox(width: 10,),
            Iconbuttonn(icon: Icons.visibility_off, btext: "Turn on incognito", onpressed: (){}),

            SizedBox(width: 10,),
            Iconbuttonn(icon: Icons.share_outlined, btext: "Share account", onpressed: (){}),

            

           
          ],
        )
        ), 
        
///////////////////////history/////////////////////////        
        SizedBox(height: 15,),
        Row(
          children: [
            SizedBox(width: 10,),
            Text("History",style: TextStyle(fontSize: 20,color: Appcolor.textcolor,fontWeight: FontWeight.bold),),
            SizedBox(width: 225,),
            
            OutlinedButton(
            style: OutlinedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10)),
            onPressed: (){}, 
            child: Text("view all",style: TextStyle(color: Appcolor.textcolor),), 
            ),

          ],
        ),
        
///////////////////////////////history videos////////////////////////        
        SizedBox(height: 10,),
        SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: 
        Row(
          children: [
            SizedBox(width: 10 ,),
           Container(
            height: 145,
            width: 150,
            //color: Appcolor.textcolor,

            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 85,
                  width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/1c/66/54/1c665408f49b1e59293e27ec2db53080.jpg"),fit: BoxFit.cover),),
                ),
                SizedBox(height: 5,),
                Text("Episode 123 - Tarak Mehata Ka Oolta C...",style: TextStyle(fontSize: 12,color: Appcolor.textcolor),),
                Text("Sony SAB",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 12),)
                    
              ],
            )
           ),

           SizedBox(width: 10,),
           Container(
            height: 145,
            width: 150,
            //color: Appcolor.textcolor,

            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  height: 85,
                  width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/e3/e8/31/e3e831a6a3d73b86e336276c64d87e25.jpg"),fit: BoxFit.cover),),
                ),
                SizedBox(height: 5,),
                Text("CID Episode 1405 - Aab Karo Ya Maro | New E... ",style: TextStyle(fontSize: 12,color: Appcolor.textcolor),),
                Text("Sony Entertainment",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 12),)
                    
              ],
            )
           ),
          
           SizedBox(width: 10,),
           Container(
            height: 145,
            width: 150,
            //color: Appcolor.textcolor,

            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  height: 85,
                  width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/f0/5e/88/f05e88bba937fef6d32e23a13350f112.jpg"),fit: BoxFit.cover),),
                ),
                SizedBox(height: 5,),
                Text("Channai Express Full Movie | Hindi | Witho...  ",style: TextStyle(fontSize: 12,color: Appcolor.textcolor),),
                Text("LIV Comedy",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 12),)
                   
              ],
            )
           ),


           SizedBox(width: 10,),
           Container(
            height: 145,
            width: 150,
            //color: Appcolor.textcolor,

            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  height: 85,
                  width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/03/d8/75/03d875a32b0b7970ea64dc988f19c696.jpg"),fit: BoxFit.cover),),
                ),
                SizedBox(height: 5,),
                Text("3 Idiots Full Movie | Comedy | Amir Khan...  ",style: TextStyle(fontSize: 12,color: Appcolor.textcolor),),
                Text("Shmaroo movies",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 12),)
                    
              ],
            )
           ),


          ],
        )
        ),

/////////////////////////////playlist////////////////////////////////////////
        SizedBox(height: 15,),
        Row(
          children: [
            SizedBox(width: 10,),
            Text("Playlists",style: TextStyle(fontSize: 20,color: Appcolor.textcolor,fontWeight: FontWeight.bold),),
            
            SizedBox(width: 175,),
            Icon(Icons.add,color: Appcolor.textcolor,size: 30,),

            SizedBox(width: 10,),
            OutlinedButton(
            style: OutlinedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10)),
            onPressed: (){}, 
            child: Text("view all",style: TextStyle(color: Appcolor.textcolor),), 
            ),

          ],
        ),
        
///////////////////////////////playlist videos/////////////////////////////////
SingleChildScrollView(scrollDirection: Axis.horizontal,
child: 
        Row(
          children: [
/////////////////////liked videos/////////////////////////
            SizedBox(width: 10,),
            Container(
                height: 145,
                width: 150,

                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 85,
                      width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/ba/25/ac/ba25ac48b4005b66b6d4fedba08445b8.jpg"),fit: BoxFit.cover),),
                    
                      child: 
                      Container(
                        height: 85,
                        width: 150,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black.withOpacity(0.5),),
                        
                        child: 
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.thumb_up,color: Appcolor.textcolor,),
                            Text("697",style: TextStyle(color: Appcolor.textcolor,fontSize: 12,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      )
                    ),

                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text("Liked videos",style: TextStyle(fontSize: 14,color: Appcolor.textcolor),),
                        SizedBox(width: 50,),
                        Icon(Icons.more_vert,color: Appcolor.textcolor,size: 17,)
                      ],
                    ),
                    Text("private",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 12),)      
                  ],
                )
               ),

/////////////////////watch later//////////////////////////
            SizedBox(width: 10,),
            Container(
                height: 145,
                width: 150,
                
                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 85,
                      width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/86/9c/49/869c493497b686c6475e3fe5b64323e2.jpg"),fit: BoxFit.cover),),
                    
                      child: 
                      Container(
                        height: 85,
                        width: 150,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black.withOpacity(0.5),),
                        
                        child: 
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.watch_later_outlined,color: Appcolor.textcolor,),
                            Text("6",style: TextStyle(color: Appcolor.textcolor,fontSize: 12,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      )
                    ),

                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text("Watch Later",style: TextStyle(fontSize: 14,color: Appcolor.textcolor),),
                        SizedBox(width: 50,),
                        Icon(Icons.more_vert,color: Appcolor.textcolor,size: 17,)
                      ],
                    ),
                    Text("private",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 12),)      
                  ],
                )
               ),

///////////////////////////sounds from shorts//////////////////////////
            SizedBox(width: 10,),
            Container(
                height: 145,
                width: 150,
                
                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 85,
                      width: 150,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 184, 57, 57),borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage("assets/images/color_shorts.jpg"),),),
                    
                    ),

                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text("Sounds form shorts",style: TextStyle(fontSize: 14,color: Appcolor.textcolor),),
                        SizedBox(width: 5,),
                        Icon(Icons.more_vert,color: Appcolor.textcolor,size: 17,)
                      ],
                    ),
                    Text("private • playlist",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 12),)      
                  ],
                )
               ),

////////////////////////new playlist///////////////////
            SizedBox(width: 10,),
            Container(
                height: 145,
                width: 150,
                
                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(color: Appcolor.subtextcolor,shape: BoxShape.circle),
                    
                    child: 
                    Icon(Icons.add,color: Appcolor.textcolor,size: 25,),
                    ),

                    SizedBox(height: 15,),
                    Text("New Playlist",style: TextStyle(color: Appcolor.textcolor,fontSize: 14),)      
                  ],
                )
               ),
               SizedBox(width: 10,),             
              ],
             ),
             ),

/////////////////////////////down options////////////////////
        SizedBox(height: 30,),
        Row(
          children: [
            SizedBox(width: 25,),
            Icon(Icons.play_circle_outline,color: Appcolor.textcolor,size: 25,),
            SizedBox(width: 25,),
            Text("Your videos",style: TextStyle(color: Appcolor.textcolor,fontSize: 17),),
          ],
        ),

        SizedBox(height: 30,),
        Row(
          children: [
            SizedBox(width: 25,),
            Icon(Icons.download,color: Appcolor.textcolor,size: 25,),
            SizedBox(width: 25,),
            Text("Downloads",style: TextStyle(color: Appcolor.textcolor,fontSize: 17),),
            SizedBox(width: 180,),
            Icon(Icons.check_circle,color: Appcolor.textcolor,)
          ],
        ),

        SizedBox(height: 20,),
        Divider(
          color: Appcolor.subtextcolor,
          thickness: 1,
        ),

        SizedBox(height: 15,),
        Row(
          children: [
            SizedBox(width: 25,),
            Icon(Icons.movie_outlined,color: Appcolor.textcolor,size: 25,),
            SizedBox(width: 25,),
            Text("Your movies",style: TextStyle(color: Appcolor.textcolor,fontSize: 17),),
            
          ],
        ),

        SizedBox(height: 30,),
        Row(
          children: [
            SizedBox(width: 25,),
            Icon(Icons.workspace_premium_outlined,color: Appcolor.textcolor,size: 25,),
            SizedBox(width: 25,),
            Text("Get YouTube Premium",style: TextStyle(color: Appcolor.textcolor,fontSize: 17),),
            
          ],
        ),

        
        SizedBox(height: 20,),
        Divider(
          color: Appcolor.subtextcolor,
          thickness: 1,
        ),

        SizedBox(height: 15,),
        Row(
          children: [
            SizedBox(width: 25,),
            Icon(Icons.auto_graph_outlined,color: Appcolor.textcolor,size: 25,),
            SizedBox(width: 25,),
            Text("Time watched",style: TextStyle(color: Appcolor.textcolor,fontSize: 17),),
            
          ],
        ),

        SizedBox(height: 30,),
        Row(
          children: [
            SizedBox(width: 25,),
            Icon(Icons.help_outline,color: Appcolor.textcolor,size: 25,),
            SizedBox(width: 25,),
            Text("Help and feedback",style: TextStyle(color: Appcolor.textcolor,fontSize: 17),),
            
          ],
        ),
        SizedBox(height: 15,),

        ],
      )
      ),

    );
  }
}