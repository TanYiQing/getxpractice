import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class GetStoragePage extends StatelessWidget {
  TextEditingController _emailController = new TextEditingController(text: "");
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Storage'),
      ),
      body: Center(
        child: Column(children: [
          Text('Email'),
          TextField(
            controller: _emailController,
          ),
          ListTile(
            title: Text("Write"),
            onTap: () {
              storage.write("email", _emailController.text);
            },
          ),
          ListTile(
            title: Text("Read"),
            onTap: () {
              print("${storage.read("email")}");
            },
          ),
        ]),
      ),
    );
  }

  
}
