import 'package:contador/pages/home/controller.dart';
import 'package:get/get.dart';

class MyHomeBinding implements Bindings {
  const MyHomeBinding();
  @override
  void dependencies() {
    Get.put<MyHomeController>(MyHomeController());
  }
}
