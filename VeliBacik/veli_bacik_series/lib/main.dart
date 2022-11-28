import 'package:flutter/material.dart';
import 'package:veli_bacik_series/101/theme/theme_constants.dart';
import 'package:get/get.dart';
import 'package:veli_bacik_series/101/ui/view101.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: CustomThemes.instance.lightTheme,
      darkTheme: CustomThemes.instance.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OneHundredOne(),
    );
  }
}

// import 'package:http/http.dart' as http;
// import 'package:servislettt/source/service/service_exceptions.dart';

// class BaseRequest {
//   static Future<http.Response?> getRequest({required String path, Map<String, dynamic>? queryParameters}) async {
//     try {
//       Uri apiAdress = Uri.parse(path).replace(queryParameters: queryParameters);
//       http.Response? response = await http.get(apiAdress);

//       (apiAdress.toString());
//       switch (response.statusCode) {
//         case 200:
//           return response;
//         case 404:
//           throw BadRequestException().exception;
//         case 403:
//           throw UnAuthenticationException().exception;
//         default:
//           throw FetchDataException().exception;
//       }
//     } catch (e) {
//       return Future.error(e);
//     }
//   }
// }

// import 'package:servislettt/source/constants/app_texts.dart';

// // RxString errorName = RxString("");
// String? errorName;

// class FetchDataException implements Exception {
//   get exception => errorName = AppTexts.fetchDataError;
// }

// class BadRequestException implements Exception {
//   get exception => errorName = AppTexts.badRequest;
// }

// class UnAuthenticationException implements Exception {
//   get exception => errorName = AppTexts.authenticationException;
// }

////Service
///
// ///import 'dart:convert';
// import 'package:servislettt/source/constants/base_urls.dart';
// import 'package:servislettt/source/models/HomeTab/ModelOfWheelBrand/model_brands.dart';
// import 'package:http/http.dart' as http;
// import 'package:servislettt/source/service/base_service.dart';

// class ServiceOfWheelBrands {
//   static Future<ModelOfWheelBrand?> getWheelBrands() async {
//     try {
//       http.Response? response = await BaseRequest.getRequest(path: BaseUrls.wheelBrand);
//       if (response != null) {
//         Map<String, dynamic> responseValue;
//         responseValue = jsonDecode(response.body);
//         if (responseValue.isNotEmpty) {
//           ModelOfWheelBrand modelOfNews = ModelOfWheelBrand.fromJson(responseValue);
//           return modelOfNews;
//         }
//       }
//     } catch (e) {
//       return ModelOfWheelBrand();
//     }
//     return null;
//   }
// }

//Controller
// fetchBrands() => ServiceOfWheelBrands.getWheelBrands().then((value) => brands.value = value?.data?.brands ?? []).whenComplete(() => LoadingChecker.changeSituation());
