import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractice/pages/translation/english.dart';
import 'package:getxpractice/pages/translation/mandarin.dart';

class TranslationService extends Translations {
  static Locale get locale => Get.deviceLocale;
  static final fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'zh_Hans': zh_Hans,
      };
}
