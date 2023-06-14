import 'dart:io';

import 'package:acadallydemo/login_module/widget/background_container.dart';
import 'package:acadallydemo/login_module/widget/tagline_container.dart';
import 'package:acadallydemo/profile_module/widget/profile_container.dart';
import 'package:acadallydemo/profile_module/widget/subject_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../chapter_module/chapter_screen.dart';
import '../common_widget/default_button.dart';
import '../common_widget/progress_widget.dart';
import '../constant/common.dart';
import '../constant/const_color.dart';
import '../constant/constants.dart';
import '../controller/profile_page_controller.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {

  final con = Get.put(ProfilePageController());


  @override
  void initState() {
    super.initState();

    con.fetchProfile();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfilePageController>(builder: (_)
    {
      return Scaffold(
          body: SingleChildScrollView(
              reverse: true,
              child:con.profileModel == null?
                  Container(
                    height: screenHeight(context),
                    width: screenWidth(context),
                    child:
                    Center(child: ProgressBarWidget())

                  ):

              Stack(children:
              [
                BackgroundConatiner(constImage.splashImage),
                ProfileConatiner(results: con.profileModel!,),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 0.0, right: 0.0, bottom: 0.0),
                      width: screenWidth(context),
                      height: screenHeight(context) / 2.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child:
                          Column(
                              children: [

                                SizedBox(height: 20,),
                                Row(children: [

                                  Text(
                                    'Subjects',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Text(
                                    'View all',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal),
                                  ),

                                ],),
                                SizedBox(height: 20,),

                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 1, right: 1),
                                    child:
                                    Container(
                                        height: 150,
                                        child: ListView.builder(
                                            physics: const AlwaysScrollableScrollPhysics(),
                                            scrollDirection: Axis.horizontal,
                                            shrinkWrap: true,
                                            itemCount: 5,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return
                                                SubjectWidget(
                                                  press: () {
                                                    Get.to(ChapterScreen());
                                                  },
                                                );
                                            }))),

                              ])),
                    ))

              ])));
    });
  }

}
