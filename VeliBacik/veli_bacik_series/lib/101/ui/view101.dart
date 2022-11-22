import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_bacik_series/101/components/appbar/custom_appbar.dart';
import 'package:veli_bacik_series/101/components/button/custom_button.dart';
import '../utils/enums101.dart';

class OneHundredOne extends StatelessWidget {
  const OneHundredOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: _body(context),
      floatingActionButton: _fab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      bottomNavigationBar: _bottomNavigatorBar(),
    );
  }

  _body(BuildContext context) {
    return Column(
      children: [
        Text("101 Course", style: Theme.of(context).textTheme.bodyText1),
        const CustomButton(),
      ],
    );
  }

  _fab() {
    return FloatingActionButton(
      backgroundColor: Colors.purple,
      onPressed: () {
        Get.changeThemeMode(Get.isDarkMode == true ? ThemeMode.light : ThemeMode.dark);
      },
      child: const Icon(Icons.dark_mode),
    );
  }

  _bottomNavigatorBar() {
    return BottomNavigationBar(
      onTap: (value) {
        debugPrint("value $value");
      },
      backgroundColor: Colors.cyan,
      items: BottomNavigatorBarItemKeys.values.map((e) {
        return BottomNavigationBarItem(icon: const Icon(Icons.home), label: e.name);
      }).toList(),
    );
  }
}




/*
CustomTheme usage onyl GetX No ThemeManager. Getx gives us already. In this reason I hate the getx. But Even if you can use
singleton struture to Themes.
---
CustomFont Usage.
--
BottomNavigatorBar Usage. BottomNavigatorBar vs Tabbar usage. So, what is the difference between each of them? Actullay,
there is no too much difference betweeen them. BottomNavigatorBar uses until 3 to 5 destinations. if you have more than 5 destinations
you should use the tabbar.
--
Button Size with sized box, and keep all size in any dart file with enums.

*/