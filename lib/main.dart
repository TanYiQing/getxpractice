import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getxpractice/pages/theme/theme.dart';
import 'package:getxpractice/pages/translation/translationservice.dart';
import 'package:getxpractice/routes/app_pages.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX Practices",
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      //getPages: AppPages.routestree); /*Using routes tree*/
      getPages: AppPages.routes,
      /*Using routes list*/
      unknownRoute: AppPages.notfound,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
    );
  }
}
