import 'dart:convert';

import 'package:dio/dio.dart';
import '../constant/http.dart';
import '../services/configs/constants.dart';
import '_base.dart';



class MockRepository extends BaseRepository {
  MockRepository(Dio dio) : super(dio);



  Future<dynamic> getLogin(var username, var password) {

    return requestApi(
      method: POST,
      url: LoginUrl,
      queryParam: {
        'username': username,
        'password': password,
        'service': 'moodle_mobile_app',

      },
    ).then((response) {
      return response;
    });

  }

  Future<dynamic> getProfileData(var token) {

    return requestApi(
      method: GET,
      url: ProfileUrl,
      queryParam: {
        'moodlewsrestformat': 'json',
        'wstoken': token,
        'wsfunction': 'tenent_users_data',
        'tenant[0][username]': 's1',

      },
    ).then((response) {
      return response;
    });

  }



}
