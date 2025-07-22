import 'package:flutter/material.dart';
import 'package:flutter_application_3/color/app_color.dart';

class Forgotpassscreen extends StatelessWidget {
  const Forgotpassscreen({super.key});
  
  BuildContext get context => context;

  //class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  // final TextEditingController _emailcontroller = TextEditingController();

    void _popScreen(){

     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("reset link sent")));
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Appcolor.bgcolor,

      appBar: AppBar(
        backgroundColor: Appcolor.bgcolor,
        leading: Icon(Icons.arrow_back,color: Appcolor.textcolor,),
        title: Text("Forgot Password",style: TextStyle(color: Appcolor.textcolor,fontWeight: FontWeight.bold),),

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
                  //SizedBox(height: 90,),
                  Icon(Icons.lock_outline,color: Colors.red,size: 64,),
                  SizedBox(height: 20,),
                  Text("Reset your password",style: TextStyle(color: Appcolor.textcolor,fontWeight: FontWeight.bold,fontSize: 20)),
                  SizedBox(height: 20,),
                  Text("Enter your email address and we'll send you a link to resent your password.",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 16,),textAlign: TextAlign.center,),
                  
                  SizedBox(height: 25,),
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(
                              horizontal: 120,
                              vertical: 20,
                            ),
                    ),
                    onPressed: _popScreen, 
                    child: Text("Send Reset Link",style: TextStyle(color: Appcolor.textcolor),)
                  ),
            
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text("Back to Login",style: TextStyle(color: Colors.red),))
                  
                ],
              ),
          ),
        ),
      ),
      

    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_application_3/color/app_color.dart';

// class ForgotPasswordScreen extends StatefulWidget {
//   const ForgotPasswordScreen({super.key});

//   @override
//   State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
// }

// class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

//   final TextEditingController _emailcontroller = TextEditingController();

//   void _popScreen(){

//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("reset link sent")));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       backgroundColor: Appcolor.bgcolor,

//       appBar: AppBar(
//         backgroundColor: Appcolor.bgcolor,
//         leading: Icon(Icons.arrow_back,color: Appcolor.textcolor,),
//         title: Text("Forgot Password",style: TextStyle(color: Appcolor.textcolor,fontWeight: FontWeight.bold),),

//       ),

//       body: 
  
//       Center(
//         child: 
//         Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: 
//           SingleChildScrollView(scrollDirection: Axis.vertical,
//             child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   //SizedBox(height: 90,),
//                   Icon(Icons.lock_outline,color: Colors.red,size: 64,),
//                   SizedBox(height: 20,),
//                   Text("Reset your password",style: TextStyle(color: Appcolor.textcolor,fontWeight: FontWeight.bold,fontSize: 20)),
//                   SizedBox(height: 20,),
//                   Text("Enter your email address and we'll send you a link to resent your password.",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 16,),textAlign: TextAlign.center,),
                  
//                   SizedBox(height: 25,),
//                   TextFormField(
//                     style: TextStyle(color: Appcolor.textcolor),
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       hint: 
//                       Row(
//                         children: [
                          
//                           Icon(Icons.mail,color: Appcolor.subtextcolor,),
//                           SizedBox(width: 10,),
//                           Text(" Enter Email",style: TextStyle(color: Appcolor.subtextcolor,fontSize: 14) ,),
//                         ],
//                       ),
                      
//                     ),
//                   ),
            
//                   SizedBox(height: 20,),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),
//                       backgroundColor: Colors.red,
//                       padding: EdgeInsets.symmetric(
//                               horizontal: 120,
//                               vertical: 20,
//                             ),
//                     ),
//                     onPressed: _popScreen, 
//                     child: Text("Send Reset Link",style: TextStyle(color: Appcolor.textcolor),)
//                   ),
            
//                   SizedBox(height: 20,),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: Text("Back to Login",style: TextStyle(color: Colors.red),))
                  
//                 ],
//               ),
//           ),
//         ),
//       ),
      

//     );
//   }
// }