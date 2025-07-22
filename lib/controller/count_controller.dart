import 'package:get/get.dart';

class CountController extends GetxController {
  RxInt count = 0.obs;

  void add()
  {
    count++;
  }

  RxString name = "Vaishnavi".obs;

  void updateName ()
  {
    if(name.value == "Vaishnavi")
    {
    name.value = "Mahurkar";
    }
    else if(name.value == "Mahurkar")
    {
      name.value = "Vaishnavi";
    }
  }
}
