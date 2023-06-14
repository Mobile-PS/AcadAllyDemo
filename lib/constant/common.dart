import 'dart:developer';
import 'dart:io';
import 'dart:ui';


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';






screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

screenHeight(BuildContext context) => MediaQuery.of(context).size.height;



showSnackbar(String message, [int timeInSec = 3]) {
  Get.showSnackbar(GetSnackBar(
    message: message,
    duration: Duration(seconds: timeInSec),
    snackStyle: SnackStyle.FLOATING,
  ));
}


hideKeyBoard() => SystemChannels.textInput.invokeMethod('TextInput.hide');




