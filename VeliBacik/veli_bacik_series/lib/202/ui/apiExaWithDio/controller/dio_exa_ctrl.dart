import 'package:get/get.dart';
import 'package:veli_bacik_series/202/helper/loading_overlay.dart';
import 'package:veli_bacik_series/202/ui/apiExaWithDio/models/comments/model_comments.dart';
import 'package:veli_bacik_series/202/ui/apiExaWithDio/service/service_dio_exa.dart';

class DioExaCtrl extends GetxController {
  RxList<ModelOfComments> comments = <ModelOfComments>[].obs;
  @override
  void onInit() {
    LoadingOverlay.instance.changeStatue();
    fetchComments();
    super.onInit();
  }

  fetchComments() async => await ServiceOfComments.instance.getComments().then((value) => {comments.addAll(value), update()});
}
