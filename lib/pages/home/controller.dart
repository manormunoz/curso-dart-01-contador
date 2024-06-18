import 'package:get/get.dart';

class MyHomeController extends GetxController {
  MyHomeController();
  RxInt contador = 0.obs;

  void sum() {
    contador.value = contador.value + 1;
  }
}
