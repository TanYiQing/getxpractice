import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Container(
          child: Text(
              'This is a middleware page. User need to login before proceeding to next page'),
        ),
      ),
    );
  }
}
