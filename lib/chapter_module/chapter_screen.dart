import 'package:acadallydemo/chapter_module/widget/default_back.dart';
import 'package:acadallydemo/chapter_module/widget/faq_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/common.dart';
import '../constant/const_color.dart';
import '../constant/constants.dart';

class ChapterScreen extends StatefulWidget {
  @override
  _ChapterScreen createState() => _ChapterScreen();
}

class _ChapterScreen extends State<ChapterScreen> {
 // final siginInController = Get.put(FaqPageController());

  @override
  void initState() {
   // siginInController.init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  DefaultBack(press: () {
                    Get.back();
                  },),
                  SizedBox(width: screenWidth(context) / 3),
                  Center(
                    child: Text(
                      'Chapter',
                      style: kteststyle22profile,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),

              SizedBox(
                height: 30,
              ),

             Expanded(
                          child: ListView.builder(
                              physics: const AlwaysScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 4),
                                  child: FaqCard(
                                  callback: (value){

                                    print(value);
                                  },
                                  ),
                                );
                              }))

            ])));
  }
}
