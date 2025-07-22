import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final double height;
  final double width;
  final String url;

  const Circle({
    super.key, 
     this.height = 60, 
     this.width = 60, 
    required this.url
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ,
      decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover)),
    );
  }
}