import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouterAuthMiddleware extends GetMiddleware {
  @override
  int priority = 0;

  //RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings redirect(String route) {
    Future.delayed(Duration(seconds: 1), () => Get.snackbar("提示", "请先登录APP"));
    return RouteSettings(name: "/login");
  }
}
