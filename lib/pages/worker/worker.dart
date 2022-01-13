import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractice/pages/worker/controller.dart';

class WorkerPage extends StatelessWidget {
  final controller = CountController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Worker Page'),
      ),
      body: Center(
          child: Column(
        children: [
          GetX<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                return Column(
                  children: [
                    Text("Value=>${_.count}"),
                    MaterialButton(
                        color: Colors.blue,
                        child: Text("Add"),
                        onPressed: () {
                          controller.add();
                        }),
                  ],
                );
              })
        ],
      )),
    );
  }
}
