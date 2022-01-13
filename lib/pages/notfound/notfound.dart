import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotFoundView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ERROR 404:Page Not Found'),
      ),
      body: Center(
        child: Container(
            child: MaterialButton(child: Text("Back to home"),
                color: Colors.blue, onPressed: () => Get.offAllNamed("/home"))),
      ),
    );
  }
}
