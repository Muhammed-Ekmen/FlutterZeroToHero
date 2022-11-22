import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_bacik_series/101/theme/theme_constants.dart';
import 'package:veli_bacik_series/101/ui/view101.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: CustomThemes.instance.lightTheme,
      darkTheme: CustomThemes.instance.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OneHundredOne(),
    );
  }
}
