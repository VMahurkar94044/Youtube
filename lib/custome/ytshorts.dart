import 'package:flutter/material.dart';

class Ytshorts extends StatelessWidget {
  final double height;
  final double width;
  final Color ccolor;
  final String url;
  final double radius;

  const Ytshorts({
    super.key, 
    this.height = 270, 
    this.width = 200, 
    this.ccolor = Colors.black, 
    required this.url, 
    this.radius = 20,
    });

  @override
  Widget build(BuildContext context) {
    return 
      Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      color: ccolor,
                      image: DecorationImage(
                        image: NetworkImage(
                          url,
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(radius),
                    ),
                  );
   
  }
}