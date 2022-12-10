import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class LoadingOverlay {
  LoadingOverlay._();
  static LoadingOverlay get instance => LoadingOverlay._();

  RxBool isLoading = false.obs;

  changeStatue() {
    isLoading.value = !isLoading.value;
    debugPrint("check statue $isLoading");
  }

  situation({dynamic child}) {
    return Obx(() => isLoading.value == false ? child : const Center(child: Text("asd")));
  }
}
