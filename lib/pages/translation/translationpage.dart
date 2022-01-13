import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TranslationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translation Page'),
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            "title -> " + 'title'.tr,
            style: TextStyle(fontSize: 24),
          ),
          Text(
            "subtitle -> " + 'subtitle'.tr,
            style: TextStyle(fontSize: 24),
          ),
          Divider(),
          ListTile(
            title: Text("Mandarin"),
            subtitle: Text('zh-Hans'),
            onTap: () {
              var locale = Locale('zh', 'Hans');
              Get.updateLocale(locale);
              print("Mandarin");
            },
          ),
          Divider(),
          ListTile(
            title: Text("English"),
            subtitle: Text('en-US'),
            onTap: () {
              var locale = Locale('en', 'US');
              Get.updateLocale(locale);
              print("English");
            },
          ),
        ],
      )),
    );
  }
}
