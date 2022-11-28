import 'package:get/get.dart';
import 'package:veli_bacik_series/101/ui/ApiExample/model/model_posts.dart';
import 'package:veli_bacik_series/101/ui/ApiExample/service/api_service.dart';

class ApiCtrl extends GetxController {
  RxList<ModelOfPosts> userPosts = <ModelOfPosts>[].obs;
  RxBool loadingStatue = false.obs;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  fetchData() {
    loadingStatue.value = true;
    ServiceOfPosts.getPosts().then((value) => userPosts.addAll(value));
    loadingStatue.value = false;
  }
}


/*
if your response is List, you gotta equels to [] and obs like line 6

*/