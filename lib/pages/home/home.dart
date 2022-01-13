import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: ListView(children: [
        Text("Routing", style: TextStyle(fontSize: 25)),
        ListTile(
          title: Text("Page 1 (toNamed)"),
          subtitle: Text("Get.toNamed(/page1)"),
          onTap: () => Get.toNamed("/page1"), /*Using routes list*/
          //onPressed: () => Get.toNamed("/home/page1"), /*Using routes tree*/
        ),
        Divider(),
        ListTile(
          title: Text("Page 2 (offNamed)"),
          subtitle: Text("Get.offNamed(/page2)"),
          onTap: () => Get.offNamed("/page2"), /*Using routes list*/
          //onPressed: () => Get.offNamed("/home/page1/page2"), /*Using routes tree*/
        ),
        Divider(),
        ListTile(
            title: Text("Page Unknown Route"),
            subtitle: Text("Get.toNamed(/aaa/bbb)"),
            onTap: () => Get.toNamed("/aaa/bbb")),
        Divider(color: Colors.black),
        Text("Data Passing", style: TextStyle(fontSize: 25)),
        ListTile(
            title: Text("Page + Pass Data (arguments)"),
            subtitle: Text("Get.toNamed(/pagepassdata, arguments: {id: 123})"),
            onTap: () async {
              var result =
                  await Get.toNamed("/pagepassdata", arguments: {"id": 123});
              Get.snackbar("返回值", "success -> " + result["success"].toString());
              // Get.toNamed("/pagepassdata",arguments:Student(name:'Tan Yi Qing',age:22)) /*Passing Object to another page */
            } /*Using routes list*/

            ),
        Divider(),
        ListTile(
            title: Text("Page + Pass Data (parameters)"),
            subtitle: Text("Get.toNamed(/pagepassdata?id=321);"),
            onTap: () async {
              var result = await Get.toNamed("/pagepassdata?id=321");
              Get.snackbar("返回值", "success -> " + result["success"].toString());
              // Get.toNamed("/pagepassdata",arguments:Student(name:'Tan Yi Qing',age:22)) /*Passing Object to another page */
            } /*Using routes list*/

            ),
        Divider(),
        ListTile(
            title: Text("Page + Pass Data (parameters)"),
            subtitle: Text("Get.toNamed(/pagepassdata/777)"),
            onTap: () async {
              var result = await Get.toNamed("/pagepassdata/777");
              Get.snackbar("返回值", "success -> " + result["success"].toString());
              // Get.toNamed("/pagepassdata",arguments:Student(name:'Tan Yi Qing',age:22)) /*Passing Object to another page */
            } /*Using routes list*/

            ),
        Divider(
          color: Colors.black,
        ),
        Text("Middleware", style: TextStyle(fontSize: 25)),
        ListTile(title: Text("Login"), onTap: () => Get.toNamed("/page3")),
        Divider(color: Colors.black),
        Text("State Management", style: TextStyle(fontSize: 25)),
        ListTile(title: Text("obx"), onTap: () => Get.toNamed("/obx")),
        Divider(),
        ListTile(title: Text("Getx"), onTap: () => Get.toNamed("/getx")),
        Divider(),
        ListTile(
            title: Text("GetBuilder"), onTap: () => Get.toNamed("/getbuilder")),
        Divider(),
        ListTile(
            title: Text("ValueBuilder"),
            onTap: () => Get.toNamed("/valuebuilder")),
        Divider(color: Colors.black),
        Text("Worker", style: TextStyle(fontSize: 25)),
        ListTile(title: Text("Worker"), onTap: () => Get.toNamed("/worker")),
        Divider(color: Colors.black),
        Text("Dependencies", style: TextStyle(fontSize: 25)),
        ListTile(title: Text("Get.put"), onTap: () => Get.toNamed("/getput")),
        Divider(),
        ListTile(
            title: Text("Get.lazyPut"),
            onTap: () => Get.toNamed("/getlazyput")),
        Divider(color: Colors.black),
        Text("Translations", style: TextStyle(fontSize: 25)),
        ListTile(title: Text("Translate"), onTap: () => Get.toNamed("/trans")),
        Divider(color: Colors.black),
        Text("Theme", style: TextStyle(fontSize: 25)),
        ListTile(title: Text("Theme"), onTap: () => Get.toNamed("/theme")),
        Divider(color: Colors.black),
        Text("GetStorage", style: TextStyle(fontSize: 25)),
        ListTile(title: Text("GetStorage"), onTap: () => Get.toNamed("/storage")),
      ])),
    );
  }
}
