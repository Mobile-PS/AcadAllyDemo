import 'package:acadallydemo/constant/const_color.dart';
import 'package:acadallydemo/models/profile_model.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/common.dart';
import '../../constant/constants.dart';

class ProfileConatiner extends StatelessWidget {

  final ProfileModel results;

  const ProfileConatiner({super.key,required this.results});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 1,
              child: CircleAvatar(
                radius: 40.0,
                backgroundColor: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(results.tenant![2].userpic!))),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: AutoSizeText(
                  '${results.tenant![3].userfullname!}\n${results.tenant![4].companyname!} \n${results.tenant![1].classname!}',
                  style: kSmallDescStyle,
                  maxLines: 3,
                  maxFontSize: 22,
                )),
            const SizedBox(
              width: 20,
            ),

          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: screenWidth(context) / 1.3,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: CupertinoColors.systemGrey
                    .withOpacity(0.2),
                blurRadius: 5,
                offset: Offset(5, 5),
              )
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Tasks',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 16,),
              SizedBox(width: 10,)
            ],
          ),
        )
      ],
    );
  }
}
