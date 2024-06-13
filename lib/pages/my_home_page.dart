import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int contador = 0;

  Widget buildBody(BuildContext contex) {
    return Center(
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
          Text(
            '$contador',
            style: const TextStyle(
              fontSize: 38.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
      ),
      body: buildBody(context),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          contador = contador + 1;
          setState(() {});
          debugPrint(contador.toString());
        },
      ),
    );
  }
}
