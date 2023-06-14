import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:acadallydemo/models/profile_model.dart';
import 'package:acadallydemo/profile_module/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../common_widget/progresswidget_collection.dart';
import '../constant/common.dart';
import '../main.dart';
import '../models/login_model.dart';
import '../preferences/pref_repository.dart';
import '../repositories/mock_repository.dart';






class ProfilePageController extends GetxController {

  final MockRepository _mockRepository = Get.put(MockRepository(Get.find()));

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordnameController = TextEditingController();

  final _prefRepo = PrefRepository();


  ProfileModel? profileModel;


  @override
  Future<void> onInit() async {
    super.onInit();

  }


  void fetchProfile() async {



   // ProgressWidgetsCollection(NavigationService.navigatorKey.currentContext!).startLoader();

    final profileResponse = await _prefRepo.getLoginUserData();


    final response = await _mockRepository.getProfileData(profileResponse!.token);

//    ProgressWidgetsCollection(NavigationService.navigatorKey.currentContext!).stopLoader();


    if (response != null) {
      print(response.data);

      final response1 = ProfileModel.fromJson(response.data);

      profileModel = response1;

      if (response1.tenant!.isNotEmpty) {


       //  Get.offAll(ProfileScreen());
      }
      else {
        showSnackbar('Invalid login, please try again');
      }
    }

    update();

  }






}
