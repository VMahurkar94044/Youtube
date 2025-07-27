import 'package:flutter/material.dart';

class Ytcontainer extends StatelessWidget {

  //final double height;
  //final double width;
  final Color colorr;
  final String image;

  const Ytcontainer(    
    {super.key, 
    // this.height = 0, 
     //this.width = double.infinity, 
     this.colorr = Colors.black, 
     required this.image ,
    
    });

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    
    return Container(
      height: screenheight * 0.3,
      width: screenwidth * 1,
      decoration: BoxDecoration(
        color: colorr,image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover)
      ),
    );
  }
}