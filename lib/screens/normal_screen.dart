import 'package:flutter/material.dart';
import 'package:flutter_application_3/controller/count_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NormalScreen extends StatelessWidget {
   final controllerobj = Get.put(CountController());

   NormalScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title : Text("controller")),

      body: 
      
           Obx( () {

             return 
             Center(
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Text("${controllerobj.count}"),
                  ElevatedButton(onPressed: (){ controllerobj.add();}, child: Text("add")),

                  SizedBox(height: 25,),
                  Text("${controllerobj.name}"),
                  ElevatedButton(onPressed: (){ controllerobj.updateName();}, child: Text("click here"))
                ],
              ),
             );
           }
           ),
        
      
    );
  }
}