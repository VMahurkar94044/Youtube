import 'package:flutter/material.dart';

class Yttext extends StatelessWidget {

  final String text;
  final Color color;
  final FontWeight weight;
  final double size;

  const Yttext({
    super.key, 
    required this.text, 
     this.color = Colors.black, 
     this.weight = FontWeight.w400, 
     this.size = 20,
    
  
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: TextStyle(color: color,fontSize: size,fontWeight: weight),
    );
  }
}