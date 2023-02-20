import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marlo/helpers/constants/api_endpoints.dart';
import 'package:marlo/model/get_model.dart';

class Services {
  static Future<UserResponse?> getData() async {
    Dio dio = Dio();
    final token = ApiEndpoints.token;
   
    try {
      log('try');
      final Response response = await dio.get(
        ApiEndpoints.getUrl,
        options: Options(
          headers: {"authtoken": token},
        ),
      );
      log(response.data.toString());

      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        log('200');
        // final UserResponse user = (response.data as List)
        //     .map((e) => UserResponse.fromJson(e))
        //     .toList();
        return UserResponse.fromJson(response.data);
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: '400 status code',
        toastLength: Toast.LENGTH_LONG,
      );
    }
    return null;
  }

  static Future<AddResponse?> addUser(
    // String token,
    String email,
    int role,
  ) async {
    Dio dio = Dio();
    final token = ApiEndpoints.token;
    try {
      Map<String, dynamic> data = {"email": email, "role": role};
      // dio.options.headers["authtoken"] = token;
      log('1');
      final Response response = await dio.post(ApiEndpoints.inviteUrl,
          data: data,
          options: Options(headers: {
            "authtoken": token,
          }));
      log('2');
      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        log('3');
        return AddResponse.fromJson(response.data);
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: '400 status code',
        toastLength: Toast.LENGTH_LONG,
      );
    }
    return null;
  }
}
