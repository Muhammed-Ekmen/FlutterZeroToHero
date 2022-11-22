import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: Get.width,
      child: ElevatedButton(
        clipBehavior: Clip.none,
        
        autofocus: true,
        child: const Text("Button with sizedBox"),
        onPressed: () {
          debugPrint("asdasd");
        },
      ),
    );
  }
}
