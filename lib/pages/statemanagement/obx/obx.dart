import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ObxPage extends StatelessWidget {
  final count = 0.obs;
  final count1 = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Obx Page'),
      ),
      body: Center(
        child: Column(children: [
          Obx(() => Text(
                count.toString(),
                style: TextStyle(fontSize: 100),
              )),
          MaterialButton(
              color: Colors.blue,
              child: Text("+"),
              onPressed: () => count.value++),
          Obx(() => Text(count1.toString(),
              style: TextStyle(fontSize: 100, color: Colors.blue))),
          MaterialButton(
              color: Colors.blue,
              child: Text("+"),
              onPressed: () => count1.value++),
        ]),
      ),
    );
  }
}
