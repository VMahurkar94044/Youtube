import 'package:flutter/material.dart';

class Dummy2 extends StatefulWidget {
  const Dummy2({super.key});

  @override
  State<Dummy2> createState() => _Dummy2State();
}

class _Dummy2State extends State<Dummy2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,

      appBar: AppBar(
        title: Text("dummy 2"),
      ),

      body: 

      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              height : 788,
              width : 15,
              color: Colors.brown,
            ),


          ),

          Flexible(
            child: 
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 80,
                    width: double.infinity,
                    color: Colors.deepOrange,
                  ),
                  Container(
                    height: 80,
                    width: double.infinity,
                    color: Colors.white,
                    child: 
                    Center(child: Image.asset("assets/images/ashokchakra.jpg")),
                  ),
                  Container(
                    height: 80,
                    width: double.infinity,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          )
        ],
      )

    );
  }
}