import 'package:flutter/material.dart';
import 'package:veli_bacik_series/101/ui/ApiExample/controller/api_ctrl.dart';
import 'package:get/get.dart';

class ApiExaView extends StatelessWidget {
  ApiExaView({super.key});
  final ApiCtrl _ctrl = Get.put(ApiCtrl());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Api Exa View ")),
      body: Obx(
        () => _ctrl.loadingStatue.value == false
            ? ListView.builder(
                itemCount: _ctrl.userPosts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      color: Colors.blue,
                      child: ListTile(title: Text("title ${_ctrl.userPosts[index].title}")),
                    ),
                  );
                },
              )
            : const Center(child: CircularProgressIndicator.adaptive()),
      ),
    );
  }
}
