import 'package:flutter/material.dart';
import 'package:flutter_application_3/color/app_color.dart';

class Createaccount extends StatelessWidget {
  const Createaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Appcolor.bgcolor,

      appBar: AppBar(
        backgroundColor: Appcolor.bgcolor,
        leading: Icon(Icons.arrow_back,color: Appcolor.textcolor,),
        title: Text("Create Account",style: TextStyle(color: Appcolor.textcolor,fontWeight: FontWeight.bold),),

      ),


      body: 

      Center(
        child: 
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: 
          SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 64,
                  width:64,
                  decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/youtubeimage.jpg"))),
                ),
                SizedBox(height: 20,),
                Text("Sign up for YouTube",style: TextStyle(color: Appcolor.textcolor,fontWeight: FontWeight.bold,fontSize: 20),),
            
                SizedBox(height: 25,),
                      TextFormField(
                        style: TextStyle(color: Appcolor.textcolor),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hint: 
                          Row(
                            children: [
                              
                              Icon(Icons.people,color: Appcolor.subtextcolor,),
                              SizedBox(width: 10,),
                              Text(" Enter Username",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 14) ,),
                            ],
                          ),
                          
                        ),
                      ),
            
            
                      SizedBox(height: 20,),
                      TextFormField(
                        style: TextStyle(color: Appcolor.textcolor),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hint: 
                          Row(
                            children: [
                              
                              Icon(Icons.mail,color: Appcolor.subtextcolor,),
                              SizedBox(width: 10,),
                              Text(" Enter Email",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 14) ,),
                            ],
                          ),
                          
                        ),
                      ),
            
            
                      SizedBox(height: 20,),
                      TextFormField(
                        style: TextStyle(color: Appcolor.textcolor),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hint: 
                          Row(
                            children: [
                              
                              Icon(Icons.lock,color: Appcolor.subtextcolor,),
                              SizedBox(width: 10,),
                              Text(" Enter Password",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 14) ,),
                            ],
                          ),
                          
                        ),
                      ),
                      
            
                       SizedBox(height: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(
                                horizontal: 120,
                                vertical: 20,
                              ),
                      ),
                      onPressed: (){}, 
                      child: Text("Create Account",style: TextStyle(color: Appcolor.textcolor),)
                    ),
            
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text("Back to Login",style: TextStyle(color: Colors.red),))
              ]
                    ),
          ),
      ),

      ),
    );
  }
}