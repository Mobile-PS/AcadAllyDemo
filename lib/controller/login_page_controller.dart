import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:acadallydemo/profile_module/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../common_widget/progresswidget_collection.dart';
import '../constant/common.dart';
import '../main.dart';
import '../models/login_model.dart';
import '../preferences/pref_repository.dart';
import '../repositories/mock_repository.dart';






class LoginPageController extends GetxController {

  final MockRepository _mockRepository = Get.put(MockRepository(Get.find()));

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordnameController = TextEditingController();

  final _prefRepo = PrefRepository();




  @override
  Future<void> onInit() async {
    super.onInit();

  }


  void Login() async {

    ProgressWidgetsCollection(NavigationService.navigatorKey.currentContext!).startLoader();

    final response = await _mockRepository.getLogin(usernameController.text,passwordnameController.text);

    ProgressWidgetsCollection(NavigationService.navigatorKey.currentContext!).stopLoader();


    if (response != null) {
      print(response.data);

      final response1 = LoginModel.fromJson(response.data);


      if (response1.privatetoken != null) {
        final successresp = LoginModel.fromJson(response.data);
        _prefRepo.saveLoginData(successresp);

         Get.offAll(ProfileScreen());
      }
      else {
        showSnackbar('Invalid login, please try again');
      }
    }

    update();

  }






}
