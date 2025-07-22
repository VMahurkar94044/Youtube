//import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SubscribeController extends GetxController
{
  RxString text = "subscribe".obs;
  var channel = "@Funny_Mems".obs;
  var discription = "Rain walkkkk! | Rainy days ".obs;
  var discription2 = "#cartoon #annimation #reels #song...".obs;

  void subscribed ()
  {
    if(text.value == "subscribe")
    {
      text.value = "subscribed !";
    }
    
     else //if(text.value == "subscribed !")
    {
      text.value = "subscribe";
    }
  }
}