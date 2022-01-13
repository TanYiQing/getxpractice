import 'package:get/get.dart';
import 'package:getxpractice/middleware/router_auth.dart';
import 'package:getxpractice/pages/getlazyput/bindings.dart';
import 'package:getxpractice/pages/getlazyput/getlazyput.dart';
import 'package:getxpractice/pages/getlazyput/nextpage1.dart';
import 'package:getxpractice/pages/getput/getput.dart';
import 'package:getxpractice/pages/getput/nextpage.dart';
import 'package:getxpractice/pages/getstorage/getstorage.dart';
import 'package:getxpractice/pages/home/home.dart';
import 'package:getxpractice/pages/login/login.dart';
import 'package:getxpractice/pages/notfound/notfound.dart';
import 'package:getxpractice/pages/page1/page1.dart';
import 'package:getxpractice/pages/page2/page2.dart';
import 'package:getxpractice/pages/pagepassdata/pagepassdata.dart';
import 'package:getxpractice/pages/statemanagement/getBuilder/getBuilder.dart';
import 'package:getxpractice/pages/statemanagement/getx/getx.dart';
import 'package:getxpractice/pages/statemanagement/obx/obx.dart';
import 'package:getxpractice/pages/statemanagement/valueBuilder/valueBuilder.dart';
import 'package:getxpractice/pages/theme/themepage.dart';
import 'package:getxpractice/pages/translation/translationpage.dart';
import 'package:getxpractice/pages/viewneedlogin/page3.dart';
import 'package:getxpractice/pages/worker/worker.dart';

class AppPages {
  static final initial = GetPage(name: "/home", page: () => HomePage());

  /*<--------------------Route List-------------------->*/
  static final List<GetPage> routes = [
    GetPage(name: "/home", page: () => HomePage()),
    GetPage(name: "/page1", page: () => Page1()),
    GetPage(name: "/page2", page: () => Page2()),
    GetPage(name: "/pagepassdata", page: () => PagePassData()),
    GetPage(name: "/pagepassdata/:id", page: () => PagePassData()),
    GetPage(name: "/notfound", page: () => PagePassData()),
    GetPage(name: "/login", page: () => LoginPage()),
    GetPage(name: "/page3", page: () => Page3(), middlewares: [
      RouterAuthMiddleware()
    ]), //Page that have middleware, required login before access to page
    GetPage(name: "/obx", page: () => ObxPage()),
    GetPage(name: "/getx", page: () => GetxPage()),
    GetPage(name: "/getbuilder", page: () => GetBuilderPage()),
    GetPage(name: "/valuebuilder", page: () => ValueBuilderPage()),
    GetPage(name: "/worker", page: () => WorkerPage()),
    GetPage(name: "/getput", page: () => GetPutPage()),
    GetPage(name: "/nextpage", page: () => NextPage()),
    GetPage(
        name: "/getlazyput",
        page: () => GetLazyPutPage(),
        binding: DependencyLazyPutBinding()),
    GetPage(name: "/nextpage1", page: () => NextPage1()),
    GetPage(name: "/trans", page: () => TranslationPage()),
    GetPage(name: "/theme", page: () => ThemePage()),
    GetPage(name: "/storage", page: () => GetStoragePage()),
  ];

  /*<--------------------Route Tree-------------------->*/
  // static final routestree = [
  //   GetPage(name: "/home", page: () => HomePage(), children: [
  //     GetPage(name: "/page1", page: () => Page1(), children: [
  //       GetPage(name: "/page2", page: () => Page2()),
  //     ]),
  //   ]),
  // ];

  static final notfound =
      GetPage(name: "/notfound", page: () => NotFoundView());
}
