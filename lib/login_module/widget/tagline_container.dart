import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TagLineConatiner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: const [
       SizedBox(
          height: 100,
        ),
        Center(child:
        Text('AcadAlly',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.w400))),
        SizedBox(
          height: 20,
        ),
    Center(child:

        Text('Hey There!\n Welcome to AcadAlly',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700))),
      ],
    );
  }
}
