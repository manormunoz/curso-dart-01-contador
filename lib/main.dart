import 'package:contador/pages/home/binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: '/contador',
      getPages: [
        GetPage(
          name: '/contador',
          page: () => const MyHomePage(),
          binding: const MyHomeBinding(),
        ),
      ],
    );
  }
}
