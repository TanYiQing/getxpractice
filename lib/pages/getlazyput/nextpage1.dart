import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractice/pages/getlazyput/controller.dart';

class NextPage1 extends GetView<CountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
          child: Column(
        children: [
          Obx(() => Text('value=>${controller.count}')),
          ElevatedButton(
            onPressed: () {
              controller.add();
            },
            child: Text('Add'),
          ),
        ],
      )),
    );
  }
}
