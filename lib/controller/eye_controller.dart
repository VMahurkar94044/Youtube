//import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EyeController extends GetxController
{
  RxBool eye = true.obs;
  //var icon ;

  void eyechange()
  {
    //eye != eye;
    
    if(eye.value == true)
    {
      eye.value = false;
    }
    else
    {
      eye.value = true;
    }
                                         
  }

  
}