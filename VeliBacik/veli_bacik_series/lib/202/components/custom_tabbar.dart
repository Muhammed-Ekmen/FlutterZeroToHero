import 'package:flutter/material.dart';
import 'package:veli_bacik_series/202/utilities/enums.dart';

class CustomTabbar extends StatelessWidget {
  const CustomTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
        tabs: Tabs.values
            .map((e) => Tab(
                  text: e.name,
                  icon: const Icon(Icons.home, color: Colors.black),
                ))
            .toList());
  }
}
