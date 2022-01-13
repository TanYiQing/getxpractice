import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractice/pages/getlazyput/controller.dart';

class GetLazyPutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get.lazyPut Page'),
      ),
      body: Center(
          child: Column(
        children: [
          GetX<CountController>(
            init: Get.find<CountController>(),
            initState: (_) {},
            builder: (_) {
              return Text('value->${_.count}');
            },
          ),
          ElevatedButton(
            onPressed: () {
              Get.find<CountController>().add();
            },
            child: Text('Add'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/nextpage1");
            },
            child: Text('Next Page->'),
          )
        ],
      )),
    );
  }
}
