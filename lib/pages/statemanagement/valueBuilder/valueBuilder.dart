import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ValueBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ValueBuilder Page',
        ),
      ),
      body: Center(
          child: Column(children: [
        Text(
            "No Need Controller, is a fast generate for emergency use. Easy to create"),
        ValueBuilder<int>(
          initialValue: 10,
          builder: (value, updateFn) {
            return Column(children: [
              Text("count -> " + value.toString()),
              ElevatedButton(
                onPressed: () {
                  updateFn(value + 2);
                },
                child: Text('ValueBuilder -> add'),
              )
            ]);
          },
          onUpdate: (value) => print("Value updated: $value"),
          onDispose: () => print("Widget unmounted"),
        )
      ])),
    );
  }
}
