import 'dart:io';

import 'package:acadallydemo/login_module/widget/background_container.dart';
import 'package:acadallydemo/login_module/widget/tagline_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../common_widget/default_button.dart';
import '../constant/common.dart';
import '../constant/const_color.dart';
import '../constant/constants.dart';
import '../controller/login_page_controller.dart';
import '../profile_module/profile_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  final con = Get.put(LoginPageController());
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            reverse: true,
            child: Stack(children: [
              BackgroundConatiner(constImage.splashImage),
              TagLineConatiner(),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Form(
                      key: _formkey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 0.0, right: 0.0, bottom: 0.0),
                        width: screenWidth(context),
                        height: screenHeight(context) / 2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: Column(children: [
                              const SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: con.usernameController,
                                style: const TextStyle(color: Colors.black),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(16),
                                    border: customBorder1,
                                    fillColor: keyPadColor,
                                    filled: true,
                                    hintText: 'User Id',
                                    hintStyle:
                                        const TextStyle(color: Colors.black),
                                    errorBorder: customerrorBorder,
                                    focusedBorder: customfocusBorder,
                                    enabledBorder: customBorder1),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                controller: con.passwordnameController,
                                validator: (value) {
                                  if (value!.trim().isEmpty) {
                                    return 'Please enter password';
                                  }
                                  return null;
                                },
                                style: const TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(16),
                                    border: customBorder1,
                                    fillColor: keyPadColor,
                                    filled: true,
                                    hintText: 'Password',
                                    hintStyle:
                                        const TextStyle(color: Colors.black),
                                    errorBorder: customerrorBorder,
                                    focusedBorder: customfocusBorder,
                                    enabledBorder: customBorder1),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              InkWell(
                                onTap: () {
                                  // Get.to(ForgetScreen1());
                                },
                                child: Text('Forgot Password?',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: orangeColor,
                                        fontWeight: FontWeight.w400)),
                              ),
                              const SizedBox(
                                height: 45.0,
                              ),
                              DefaultButton(
                                press: () {
                                  if (_formkey.currentState!.validate()) {
                                    con.Login();
                                  }

                                  // Get.to(ProfileScreen());

                                  /* if(siginInController.mobiletxtController.text.isNotEmpty){

                          if(siginInController.mobiletxtController.text.length<8){
                            showSnackbar('Please enter 8 digit mobile number'.tr);
                          }
                          else {
                            hideKeyBoard();

                          }
                        }
                        else{
                          showSnackbar('Please enter mobile number'.tr);
                        }*/
                                },
                                text: 'Login',
                                height: screenWidth(context) / 8,
                                textStyle: ktextStyle20,
                              ),
                            ])),
                      )))
            ])));
  }
}
