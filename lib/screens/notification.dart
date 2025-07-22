import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/color/app_color.dart';

class Noti extends StatelessWidget {
  const Noti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.bgcolor,

      appBar: AppBar(
        backgroundColor: Appcolor.bgcolor,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },icon:  Icon(Icons.arrow_back, color: Appcolor.textcolor),),

        title: Text(
          "Notifications",
          style: TextStyle(color: Appcolor.textcolor, fontWeight: FontWeight.w500),
        ),
        actions: [
          Row(
            children: [
              Icon(Icons.cast, color: Appcolor.textcolor),
              SizedBox(width: 10),
              Icon(Icons.search, color: Appcolor.textcolor),
              SizedBox(width: 10),
              Icon(Icons.more_vert, color: Appcolor.textcolor),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),

      body: Column(
        children: [
          //////////////////////////////button////////////////////////
          Row(
            children: [
              SizedBox(width: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolor.textcolor,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                ),

                onPressed: () {},
                child: Text("All", style: TextStyle(color: Colors.black)),
              ),

              SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 48, 48, 48),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                ),

                onPressed: () {},
                child: Text("Mentions", style: TextStyle(color: Appcolor.textcolor)),
              ),
            ],
          ),

          ////////////////////////Today////////////////////////////
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Today",
                style: TextStyle(
                  color: Appcolor.subtextcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          /////////////////////////////notification 1//////////////////////////
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: CupertinoColors.activeBlue,
                    size: 8,
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/cake.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "For You",
                    style: TextStyle(
                      color: Appcolor.textcolor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "30 mins chocolate cake\nrecipe #without oven",
                    style: TextStyle(color: Appcolor.textcolor),
                  ),
                  Text("6 hours ago", style: TextStyle(color: Appcolor.subtextcolor)),
                ],
              ),

              SizedBox(width: 15),
              Container(
                height: 70,
                width: 110,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 153, 109, 93),
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://i.pinimg.com/736x/80/8f/b6/808fb64eb53db7a141d929ddf7edb826.jpg",
                    ),
                  ),
                ),
              ),

              SizedBox(width: 1),
              Icon(Icons.more_vert, color: Appcolor.subtextcolor),
            ],
          ),

          ////////////////////////////older////////////////////////////
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Older",
                style: TextStyle(
                  color: Appcolor.subtextcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          ///////////////////////////////////notification 2/////////////////////////
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: CupertinoColors.activeBlue,
                    size: 8,
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.pinimg.com/736x/17/8e/c7/178ec74539c8e6df305d85f2860c07af.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "For You",
                    style: TextStyle(
                      color: Appcolor.textcolor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Tarak Mehta Ka Oolta\nChasma #New Episod...",
                    style: TextStyle(color: Appcolor.textcolor),
                  ),
                  Text("5 days ago", style: TextStyle(color: Appcolor.subtextcolor)),
                ],
              ),

              SizedBox(width: 15),
              Container(
                height: 70,
                width: 110,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 153, 109, 93),
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://i.pinimg.com/736x/25/ad/84/25ad845e8cd12091a68e2a788d767486.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(width: 1),
              Icon(Icons.more_vert, color: Appcolor.subtextcolor),
            ],
          ),

          //////////////////////////////notification 3///////////////////////
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: CupertinoColors.activeBlue,
                    size: 8,
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.pinimg.com/736x/79/5e/bb/795ebb5f4a470cd7242136237f61fc53.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "For You",
                    style: TextStyle(
                      color: Appcolor.textcolor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Full Java Course in 40   \nmins #coding",
                    style: TextStyle(color: Appcolor.textcolor),
                  ),
                  Text("3 weeks ago", style: TextStyle(color: Appcolor.subtextcolor)),
                ],
              ),

              SizedBox(width: 15),
              Container(
                height: 70,
                width: 110,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 153, 109, 93),
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://i.pinimg.com/736x/c8/bd/4e/c8bd4e39920702149d9c5ad06a3735f3.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(width: 1),
              Icon(Icons.more_vert, color: Appcolor.subtextcolor),
            ],
          ),
        ],
      ),
    );
  }
}