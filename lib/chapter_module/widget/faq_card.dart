
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/common.dart';
import '../../constant/const_color.dart';
import '../../constant/constants.dart';
import 'faq_card1.dart';


class FaqCard extends StatefulWidget {

 // final Results results;
  final Function callback;

  const FaqCard({ Key? key,/*this.results*/required this.callback})
      : super(key: key);

  @override
  State<FaqCard> createState() => _FaqCardState();
}

class _FaqCardState extends State<FaqCard> {

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
           baseColor: keyPadColor,
          expandedColor: keyPadColor,
          title:Transform.translate(
            offset: Offset(0, 0),
            child:
          Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(child:
                    Text(
                      'chapter',
                      style: ktextStyle18,
                    )),
                  ])),
          children: [
            Padding(padding: EdgeInsets.only(left: 10,right: 10.0),
                child:
                ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 4),
                        child: FaqCard1(
                          callback: (value){

                            print(value);
                          },
                        ),
                      );
                    }))

          ],


        ),

        SizedBox(height: 5,),


      ],)

    );

  }
}
