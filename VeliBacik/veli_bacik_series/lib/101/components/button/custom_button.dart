import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_bacik_series/101/ui/debug_view.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: Get.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: const BeveledRectangleBorder()),
        clipBehavior: Clip.none,
        autofocus: true,
        child: const Text("Button with sizedBox and Go to DebugView"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const DebugView()));
        },
      ),
    );
  }
}
