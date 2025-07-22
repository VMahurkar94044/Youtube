import 'package:flutter/material.dart';
import 'package:flutter_application_3/color/app_color.dart';

class Textbuttonn extends StatelessWidget {

  final String btext;
  final VoidCallback onpressed;
  final Color bgcolor;
  final Color textcolor;
  final EdgeInsetsGeometry padding;
  final FontWeight weight;
 

  const Textbuttonn({
    super.key,
    required this.btext, 
    required this.onpressed, 
     this.bgcolor = const Color.fromARGB(255, 48, 48, 48), 
     this.textcolor = Appcolor.textcolor, 
     this.padding = const EdgeInsets.symmetric(vertical: 0,horizontal: 12), 
     this.weight = FontWeight.w600, 
     
     
    
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor,
        padding: padding,
        
      ),
      onPressed: onpressed,
      child: Text(btext,style: TextStyle(color: textcolor,fontWeight: weight),),
    );
  }
}

