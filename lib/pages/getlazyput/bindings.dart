import 'package:get/get.dart';
import 'package:getxpractice/pages/getlazyput/controller.dart';

class DependencyLazyPutBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountController>(() => CountController());
  }
}
