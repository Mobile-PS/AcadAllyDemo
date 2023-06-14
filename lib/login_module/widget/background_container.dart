
import 'package:flutter/material.dart';

import '../../constant/common.dart';

class BackgroundConatiner extends StatelessWidget {
  final String imagepath;
  const BackgroundConatiner(this.imagepath);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context),
      width: screenWidth(context),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagepath),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
