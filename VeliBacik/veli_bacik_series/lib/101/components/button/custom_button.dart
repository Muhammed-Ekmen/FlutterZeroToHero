import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onPressed, required this.title}) : super(key: key);
  final VoidCallback? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: Get.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: const BeveledRectangleBorder()),
        clipBehavior: Clip.none,
        autofocus: true,
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}
