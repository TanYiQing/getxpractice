import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractice/pages/statemanagement/getx/controller.dart';

class GetBuilderPage extends StatelessWidget {
  final controller = CountController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetBuilder Page'),
      ),
      body: Center(
          child: Column(children: [
        GetBuilder<CountController>(
          init: controller,
          initState: (_) {},
          builder: (_) {
            return Column(
              children: [
                Text('Value without id->${_.count}'),
                MaterialButton(
                    color: Colors.blue,
                    child: Text("_.add()"),
                    onPressed: () {
                      _.add();
                    }),
              ],
            );
          },
        ),
        MaterialButton(
            color: Colors.blue,
            child: Text("controller.update()"),
            onPressed: () {
              controller.update();
            }),
        Divider(),
        GetBuilder<CountController>(
          id: "id2",
          init: controller,
          initState: (_) {},
          builder: (_) {
            return Column(
              children: [
                Text('Value with id->${_.count2}'),
                MaterialButton(
                    color: Colors.blue,
                    child: Text("_.add2()"),
                    onPressed: () {
                      _.add2();
                    }),
              ],
            );
          },
        ),
        MaterialButton(
            color: Colors.blue,
            child: Text('controller.update(["id2"])'),
            onPressed: () {
              controller.update(["id2"]);
            }),
      ])),
    );
  }
}
