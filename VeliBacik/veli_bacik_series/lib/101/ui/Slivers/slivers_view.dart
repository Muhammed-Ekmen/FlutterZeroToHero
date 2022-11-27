import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_bacik_series/101/components/button/custom_button.dart';
import 'package:veli_bacik_series/101/ui/Slivers/custom_scrool_view.dart';
import 'package:veli_bacik_series/101/ui/Slivers/nested_slivers.dart';

class SliversExaView extends StatelessWidget {
  const SliversExaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(title: "NestedScrool View", onPressed: () => Get.to(() => const NestedSliverUsage())),
          CustomButton(title: "CustomScrool View", onPressed: () => Get.to(() => const CustomScroolViewUsage())),
        ],
      ),
    );
  }
}
