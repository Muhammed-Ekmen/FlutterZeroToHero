import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:veli_bacik_series/101/service/app_base_request.dart';
import 'package:veli_bacik_series/101/ui/ApiExample/model/model_posts.dart';

class ServiceOfPosts {
  static Future<List<ModelOfPosts>> getPosts() async {
    try {
      http.Response? response = await AppBaseRequests.getRequest(path: "https://jsonplaceholder.typicode.com/posts");
      if (response?.body != null) {
        List responseBody = jsonDecode(response?.body ?? "");
        List<ModelOfPosts> posts = responseBody.map((e) => ModelOfPosts.fromJson(e)).toList();
        return posts;
      } else {
        return [];
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}

// https://jsonplaceholder.typicode.com/posts

