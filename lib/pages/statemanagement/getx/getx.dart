import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:getxpractice/pages/statemanagement/getx/controller.dart';

class GetxPage extends StatelessWidget {
  final controller = CountController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx page'),
      ),
      body: Center(
          child: Column(children: [
        GetX<CountController>(
          init: controller,
          initState: (_) {},
          builder: (control) {
            return Text("Value 1->${control.count}");
          },
        ),
        MaterialButton(
            color: Colors.blue,
            child: Text("1"),
            onPressed: () => controller.add()),
        GetX<CountController>(
          init: controller,
          builder: (_) {
            return Text("Value 2->${_.count2}");
          },
        ),
        MaterialButton(
            color: Colors.blue,
            child: Text("2"),
            onPressed: () => controller.add2()),
        MaterialButton(
            color: Colors.blue,
            child: Text("Both"),
            onPressed: () {
              controller.add();
              controller.add2();
            }),
      ])),
    );
  }
}
