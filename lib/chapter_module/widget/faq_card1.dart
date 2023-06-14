
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/common.dart';
import '../../constant/constants.dart';


class FaqCard1 extends StatefulWidget {

 // final Results results;
  final Function callback;

  const FaqCard1({ Key? key,/*this.results*/required this.callback})
      : super(key: key);

  @override
  State<FaqCard1> createState() => _FaqCard1State();
}

class _FaqCard1State extends State<FaqCard1> {

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 0.0),
      child:Column(children: [

        ExpansionTileCard(
          onExpansionChanged: (value) {
              widget.callback(value);

              setState(() {

              });
          },
          initialPadding: EdgeInsets.zero,
          elevation: 0,
          initialElevation: 0,
          initiallyExpanded: false,
           baseColor: Colors.white,
          expandedColor: Colors.white,
          title:Transform.translate(
            offset: Offset(0, 0),
            child:
          Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(child:
                    Text(
                      'Lesson',
                      style: ktextStyle18,
                    )),
                  ])),
          children: [
            Padding(padding: EdgeInsets.only(left: 20,right: 10.0),
                child:Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(child:
                        Text(
                          'Topic',
                          style: ktextStyle15,
                        )),
                      ]),
                  SizedBox(height: 10,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(child:
                        Text(
                          'Topic',
                          style: ktextStyle15,
                        )),
                      ]),
                  SizedBox(height: 10,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(child:
                        Text(
                          'Topic',
                          style: ktextStyle15,
                        )),
                      ])

                ],)
                    
               )

          ],


        ),

        SizedBox(height: 5,),

      ],)

    );

  }
}
