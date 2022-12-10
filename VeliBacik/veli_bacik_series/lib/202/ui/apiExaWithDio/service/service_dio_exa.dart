import 'package:dio/dio.dart';
import 'package:veli_bacik_series/202/coreService/dio_client.dart';
import 'package:veli_bacik_series/202/coreService/dio_urls.dart';
import 'package:veli_bacik_series/202/ui/apiExaWithDio/models/comments/model_comments.dart';

class ServiceOfComments with DioClient {
  ServiceOfComments._();

  static ServiceOfComments get instance => ServiceOfComments._();
  //REQUESTS
  Future<List<ModelOfComments>> getComments() async {
    baseUrl = DioUrls.instance.base;
    Response<dynamic>? response = await getRequest(url: DioUrls.instance.base + DioUrls.instance.comment);
    if (response?.data != null) {
      List responseData = response?.data;
      List<ModelOfComments> comments = responseData.map((e) => ModelOfComments.fromJson(e)).toList();
      return comments;
    } else {
      return [];
    }
  }
}
