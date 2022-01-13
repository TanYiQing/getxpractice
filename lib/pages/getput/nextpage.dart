import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractice/pages/getput/controller.dart';

class NextPage extends StatelessWidget {
  final controller = Get.find<CountController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Container(
            child: Column(children: [
          GetX<CountController>(
            init: controller,
            initState: (_) {},
            builder: (_){
              return Text("Value=>${_.count}");
            },
          )
        ])),
      ),
    );
  }
}
