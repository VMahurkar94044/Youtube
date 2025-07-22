import 'package:flutter/material.dart';
import 'package:flutter_application_3/color/app_color.dart';


class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {

    String message = "click here to continue";

    Future<String> welcome() async
    {
      return Future.delayed(Duration(seconds: 2), ()
      {
        return "Hello Vaishnavi, Welcome !";
      }
      );
    }

    Future<void> loading() async
    {
      setState(() {
        message = "loading...";
      });
      String result = await welcome();
      setState(() {
        message = result;
      });
    }

    ////////////////////////////grade///////////////////
    
    String message2 = "Result Declared !";

    Future<String> grade() async
    {
      return Future.delayed(Duration(seconds: 2), 
      () {
        return "You got 88%";
      }
      );
    }

    Future<void> resultLoading() async
    {
      setState(() {
        message2 = "Result is loading...";
      });

      String result2 = await grade();
      setState(() {
        message2 = result2;
      });
    }

    //////////////////////////////counting////////////////////
    
    int num = 0;
    Future<void> increment() async
    {
      for(int i = 0;i <=10 ; i++)
      {
        setState(() {
          num = i;
          print(num);
        });
        await Future.delayed(Duration(seconds: 1));
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Appcolor.bgcolor

      appBar: AppBar(
        backgroundColor: Appcolor.bgcolor,
        title: Text("Future Function Example",style : TextStyle(color: Appcolor.textcolor)),
       
      ),


      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message,style: TextStyle(fontSize: 24,color: Colors.blue),textAlign: TextAlign.center,),

            SizedBox(height: 20,),
            FloatingActionButton.extended(onPressed: loading, 
            backgroundColor: Colors.blue,
        
            label: Text("continue",style: TextStyle(color: Appcolor.textcolor),),
      
            ),



            SizedBox(height: 60,),
            Text(message2,style: TextStyle(fontSize: 24,color: Colors.pink),textAlign: TextAlign.center,),

            SizedBox(height: 20,),
            FloatingActionButton.extended(onPressed: resultLoading, 
            backgroundColor: Colors.pink,
        
            label: Text("Show Result",style: TextStyle(color: Appcolor.textcolor),),
      
            ),



            SizedBox(height: 60,),
            Text("$num",style: TextStyle(fontSize: 24,color: Colors.green),textAlign: TextAlign.center,),

            SizedBox(height: 20,),
            FloatingActionButton.extended(onPressed: increment, 
            backgroundColor: Colors.green,
        
            label: Text("click to start",style: TextStyle(color: Appcolor.textcolor),),
      
            ),


            


          ],
        ),
      )

    );
  }
}