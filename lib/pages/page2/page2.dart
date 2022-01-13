import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text('This is page 2'),
              MaterialButton(minWidth:150,color: Colors.blue,child: Text('Get.back()'), onPressed: () => Get.back())
            ],
          ),
        ),
      ),
    );
  }
}
