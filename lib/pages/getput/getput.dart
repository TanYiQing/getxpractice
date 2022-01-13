import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractice/pages/getput/controller.dart';

class GetPutPage extends StatelessWidget {
  final controller = Get.put<CountController>(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get.put Page'),
      ),
      body: Center(
        child: Container(
            child: Column(
          children: [
            GetX<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                return Text("Value=>${_.count}");
              },
            ),
            ElevatedButton(
              onPressed: () {
                controller.add();
              },
              child: Text('Add'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/nextpage");
              },
              child: Text('Next Page->'),
            )
          ],
        )),
      ),
    );
  }
}
