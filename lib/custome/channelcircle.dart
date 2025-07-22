import 'package:flutter/material.dart';

class Channelcircle extends StatelessWidget {
  final double height;
  final double width;
  final Color ccolor;
  final String url;

  const Channelcircle({
    super.key, 
    this.height = 40,  
    this.width = 40, 
    this.ccolor = Colors.black,
    required this.url
    });

  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    color: ccolor,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(url),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: height,
                  width: width,
                );
  }
}