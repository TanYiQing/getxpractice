import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PagePassData extends StatelessWidget {
  _buildBackListTileRow(Map val) {
    return val == null
        ? Container()
        : ListTile(
            title: Text("传值 id = " + val["id"].toString()),
            subtitle: Text('Get.back(result: {"success": true}'),
            onTap: () => Get.back(result: {"success": true}),
          );
  }

  @override
  Widget build(BuildContext context) {
    var details = Get.arguments as Map;
    final parameters = Get.parameters;
    return Scaffold(
      appBar: AppBar(
        title: Text('Pass Data Page'),
      ),
      body: Center(
        child: Column(children: [
          _buildBackListTileRow(details),
          _buildBackListTileRow(parameters),
          // Text(Get.parameters.toString())
        ]),
      ),
    );
  }
}
