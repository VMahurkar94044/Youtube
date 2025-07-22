import 'package:flutter/material.dart';

class Ytcontainer extends StatelessWidget {

  final double height;
  final double width;
  final Color colorr;
  final String image;

  const Ytcontainer(    
    {super.key, 
     this.height = 240, 
     this.width = double.infinity, 
     this.colorr = Colors.black, 
     required this.image ,
    
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: colorr,image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover)
      ),
    );
  }
}