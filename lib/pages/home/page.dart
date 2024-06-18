import 'package:contador/pages/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends GetView<MyHomeController> {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MyHomeController controller = Get.find<MyHomeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contador:',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Obx(() {
              return Text(
                '${controller.contador.value}',
                style: const TextStyle(
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          controller.sum();
          // contador = contador + 1;
          // debugPrint(contador.toString());
        },
      ),
    );
  }
}
