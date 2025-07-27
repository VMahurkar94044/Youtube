import 'package:flutter/material.dart';
import 'package:flutter_application_3/color/app_color.dart';
import 'package:flutter_application_3/controller/eye_controller.dart';
import 'package:flutter_application_3/controller/login_controller.dart';
import 'package:flutter_application_3/routs/app_routs.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
//import 'package:get/get_rx/src/rx_types/rx_types.dart';

class LoginScreen extends StatelessWidget {

  //final EyeController eyec = EyeController();
  final eyec = Get.put(EyeController());
  final loginc = Get.put(LoginController());

   LoginScreen({super.key});

  

  @override
  Widget build(BuildContext context) {


    final _formkey = GlobalKey<FormState>();

    

  //bool eye = true;

  //final TextEditingController emailCtrl = TextEditingController();
  //final TextEditingController passCtrl = TextEditingController();


  void _login()
  {
    if(_formkey.currentState!.validate())
    {
      loginc.loginUser();
      //Navigator.pushReplacementNamed(context, AppRouts.tabs);
      //Get.offNamed(AppRouts.tabs);

    }
  }

    return 
    Obx( (){
      return
    Scaffold(

      backgroundColor: Appcolor.bgcolor,

      appBar: AppBar(
        leading: Image.asset("assets/images/youtubeimage.jpg"),
        title: Text(
          "YouTube",
          style: TextStyle(color: Appcolor.textcolor, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Appcolor.bgcolor
      ),

      body: Center(
        child: 
        SingleChildScrollView(scrollDirection: Axis.vertical,


        child: 
        Form(
          key: _formkey,


          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sign in",style: TextStyle(color: Appcolor.textcolor,fontSize: 25,fontWeight: FontWeight.bold),),
              Text("to continue with YouTube",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 14),),
          
              SizedBox(height: 30,),
          
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: 
                TextFormField(
                  controller: loginc.emailCtrl,
                  style: 
                  TextStyle(color: Appcolor.textcolor),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email,color: Appcolor.textcolor,),
                    hint: 
                        Text(" Enter Email",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 14) ,),
                     
                  
                  ),

                  validator: (value)
                  {
                    if(value == null || value.trim().isEmpty)
                    {
                      return "Email is required";
                    }
                    if(!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value))
                    {
                      return "Enter valid Email";
                    }
                    return null;
                  },

                ),
              ),
          
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextFormField(
                  controller: loginc.password,
                  obscureText: eyec.eye.value,
                  style: TextStyle(color: Appcolor.textcolor),
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock,color: Appcolor.textcolor,),
              
                    suffixIcon: 
                    
                      IconButton(
                      onPressed: (){
                        eyec.eyechange();
                      },

                      icon: Icon(eyec.eye.value == false ? Icons.remove_red_eye : Icons.visibility_off, 
                      size: 20,
                      color: eyec.eye.value == false ? Appcolor.textcolor : Appcolor.subtextcolor,
                      ),
                    ),

                    border: OutlineInputBorder(),
                    hint: 
                        Text(" Enter Password",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 14) ,),
                  ),

                  validator: (value)
                  {
                    if(value == null || value.trim().isEmpty)
                    {
                      return "Password is required";
                    }
                    if(value.length < 8)
                    {
                      return "password must be at least 8 characters";
                    }
                    return null;
                  },

                ),
              ),
          
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 240,right: 20),
                child: 
                GestureDetector(
                  onTap: () {
                    //Navigator.pushNamed(context, AppRouts.ForgotPasswordScreen);
                    Get.toNamed(AppRouts.ForgotPasswordScreen);
                  },
                  child: Text("Forgot Password ?",style: TextStyle(color: Colors.blueAccent),)),
              ),
          
              SizedBox(height: 40),
              
                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(
                            horizontal: 155,
                            vertical: 15,
                          ),
                  ),
                  onPressed: _login, 
                  child: Text("Login",style: TextStyle(color: Appcolor.textcolor),)
                ),
              
          
              SizedBox(height: 15,),
              GestureDetector(
                onTap: () {
                  //Navigator.pushNamed(context, AppRouts.createaccount);
                  Get.toNamed(AppRouts.createaccount);
                },
                child: Text("Create new account",style: TextStyle(color: Colors.blueAccent))),
          
              SizedBox(height: 40,),
              Text("- Sign in with -",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 14) ),
          
              SizedBox(height: 27,),
              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 112),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/60/41/99/604199df880fb029291ddd7c382e828b.jpg"))),
                    ),
                
                    SizedBox(width: 20,),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/21/76/d0/2176d0b83b7e7317fc8db2f64eab5f46.jpg"))),
                    ),
                
                    SizedBox(width: 20,),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/b5/66/fa/b566fa1473df5b662b54babb764a46f2.jpg"))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        )
      ),

    );
    }
    );
  }
}