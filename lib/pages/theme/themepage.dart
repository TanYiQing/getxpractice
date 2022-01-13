import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Page'),
      ),
      body: Center(
          child: Column(children: [
        ListTile(
          title: Text("Light Theme"),
          onTap: () {
            Get.changeThemeMode(ThemeMode.light);
          },
        ),
        ListTile(
          title: Text("Dark Theme"),
          onTap: () {
            Get.changeThemeMode(ThemeMode.dark);
          },
        ),
      ])),
    );
  }
}
