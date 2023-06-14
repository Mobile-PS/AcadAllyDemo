
import 'package:flutter/material.dart';

import '../../constant/constants.dart';

class DefaultBack extends StatelessWidget {
  const DefaultBack({ Key? key, required this.press, })
      : super(key: key);

  final Function press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => press(),
        child:
        Container(
          height: 34,
          width: 34,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(constImage.back),
              fit: BoxFit.fill,
            ),
          ),
        ),);
  }
}
