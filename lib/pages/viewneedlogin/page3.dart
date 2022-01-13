import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3 (Required Login)'),
      ),
      body: Center(
        child: Container(
          child: Text(
              'This is a required login page, user need to login to get view on this page'),
        ),
      ),
    );
  }
}
