import 'package:get/get.dart';

class YtplayController extends GetxController
{
  RxBool like = true.obs;
  
  void likechange()
  {
    
    if(like.value == true)
    {
      like.value = false;
    }
    else
    {
      like.value = true;
    }
                                         
  }

  RxBool unlike = true.obs;
  
  void unlikechange()
  {
    
    if(unlike.value == true)
    {
      unlike.value = false;
    }
    else
    {
      unlike.value = true;
    }
                                         
  }

  
}