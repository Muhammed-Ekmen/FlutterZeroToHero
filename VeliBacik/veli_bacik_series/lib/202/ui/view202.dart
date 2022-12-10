import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_bacik_series/101/components/button/custom_button.dart';
import 'package:veli_bacik_series/202/components/custom_tabbar.dart';
import 'package:veli_bacik_series/202/ui/apiExaWithDio/view/dio_exa.dart';
import 'package:veli_bacik_series/202/utilities/enums.dart';

class TwoHundredTwo extends StatelessWidget {
  const TwoHundredTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Tabs.values.length,
      child: Scaffold(
        appBar: AppBar(title: const Text("202 Views")),
        // body: _tabbarView(),
        body: Column(
          children: [
            CustomButton(title: "Dio Exa", onPressed: () => Get.to(() => DioExa())),
          ],
        ),
        bottomNavigationBar: const BottomAppBar(child: CustomTabbar()),
      ),
    );
  }

  TabBarView _tabbarView() {
    return TabBarView(
      children: [
        _randomContainer(
            color: Colors.red,
            child: Center(
              child: CustomButton(title: "Dio Exa Page", onPressed: () => Get.to(DioExa())),
            )),
        _randomContainer(color: Colors.green),
        _randomContainer(color: Colors.blue),
      ],
    );
  }

  _randomContainer({Color? color, Widget? child}) {
    return Container(
      width: Get.width,
      height: Get.height,
      color: color,
      child: child,
    );
  }
}


/*
flutter interpolation usage $
---
tabbar usage.
--
Resful APi with Dio and Error handling

Go to Dio SCreen
-----
extend,implement,with,extension



*/