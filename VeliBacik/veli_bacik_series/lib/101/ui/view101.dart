import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_bacik_series/101/components/appbar/custom_appbar.dart';
import 'package:veli_bacik_series/101/components/button/custom_button.dart';
import 'package:veli_bacik_series/101/components/textFormField/custom_tff.dart';
import '../utils/enums101.dart';

class OneHundredOne extends StatefulWidget {
  const OneHundredOne({Key? key}) : super(key: key);

  @override
  State<OneHundredOne> createState() => _OneHundredOneState();
}

class _OneHundredOneState extends State<OneHundredOne> {
  late String name;
  @override
  void initState() {
    debugPrint("init State");
    name="Sam";
    log(" name value $name",name: "NAME");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    debugPrint("didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    debugPrint("dispose");
    super.dispose();
  }

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
        Text(
          "101 Course $name",
          style: Theme.of(context).textTheme.bodyText1,
          textScaleFactor: 2,
        ),
        const CustomButton(),
        const SizedBox(height: 20),
        Stack(
          //aligment for stack children
          alignment: Alignment.topCenter,
          children: [
            Container(height: 200, width: 200, color: Colors.blue),
            Positioned(child: Container(height: 100, width: 100, color: Colors.red)),
          ],
        ),
        const CustomTextFormField(),
      ],
    );
  }

  _fab() {
    return FloatingActionButton(
      backgroundColor: Colors.purple,
      onPressed: () {
        setState(() {});
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
        return BottomNavigationBarItem(icon: Icon(Icons.home, size: IconSizes.large.getSize()), label: e.name);
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
--
Basic size operation keep with enum and Extension
--
Responsice Stack usage with Positioned widget. Stack Aligment uses for children location. Other widget is Positioned widget. When you use 
the stack, you will wants to different position front components. Remember the Wheel and step icons :)
--
SLIVERS
CustomScrollView. 
SliverFillRemaining: it will active scroll property when layouts doesn't fill the screen.
---
NestedScroolView
---
LifeCycle

initState: in here, screen doesn't create yet.Definition: before the screen draw, initialize the state this method run.

didChangeDependencies: in here screen create yet. when state has update, this field will run. For example setState. 
Definition: when the state update,this method will run.

dispose: when you leave the current state. For example go to other page with button.

---
TextFormField with AnimatedContainer. For more detail go to CustomTextFormField.
----
Debug usage.
firstly,you shoudl use log instad of the debugPrint. it has more features. But it must comes from dart:Developer import
for more go to the debugView Page.
----
textScaleFactor: that is percent enlarge or make smaller to text. 1 is its default text size. if you give 2 that is double size.
---
late Usage: the late variables wait until initilaize the constructor. for example look at the name variable at the aboive and we have used on the
appbar text. if wouldn't give value in the init method, app would crash.
*/