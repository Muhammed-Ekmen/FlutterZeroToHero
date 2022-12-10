import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veli_bacik_series/202/helper/loading_overlay.dart';
import 'package:veli_bacik_series/202/ui/apiExaWithDio/controller/dio_exa_ctrl.dart';

class DioExa extends StatelessWidget {
  DioExa({super.key});
  final _ctrl = Get.put(DioExaCtrl());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dio Example")),
      body: LoadingOverlay.instance.situation(
        child: ListView.builder(
          itemCount: _ctrl.comments.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                color: Colors.blue,
                child: ListTile(title: Text(_ctrl.comments[index].email ?? "NONE")),
              ),
            );
          },
        ),
      ),
    );
  }

  // FutureBuilder<List<ModelOfComments>> _futureBuilderSingleRequest() {
  //   return FutureBuilder(
  //     future: _ctrl.fetchComments(),
  //     builder: (context, snapshot) {
  //       if (snapshot.connectionState == ConnectionState.waiting) {
  //         return const Center(child: CircularProgressIndicator.adaptive());
  //       } else if (snapshot.hasError) {
  //         return Text(snapshot.error.toString());
  //       } else {
  //         return Center(child: Text("${snapshot.data?[0].email}"));
  //       }
  //     },
  //   );
  // }
}


/*
core service OK
service exception OK
model of related data OK
service of related data  OK
controller OK
view OK
---------------
FutureBuilder

you can use futureBuilder with single request
or you can use it with multi request. But need to use Future.wait for that.
Finally,you can reach your request with index what you want .
-------------
LoadingOverlay
if you don't use the FutureBuilder, you should make loadingOverlay class. it similar to loadingChecker.
*/