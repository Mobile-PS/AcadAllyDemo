import 'package:flutter/material.dart';

import '../constant/const_color.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.text, required this.press, required this.height,required this.textStyle})
      : super(key: key);
  final String text;
  final double height;
  final Function press;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => press(),
        child: Container(
          height: height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueAccent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: textStyle,
              )
            ],
          ),
        ));
  }
}
