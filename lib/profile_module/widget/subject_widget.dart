
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shimmer/shimmer.dart';

import '../../constant/const_color.dart';
import '../../constant/constants.dart';


class SubjectWidget extends StatelessWidget {

  //final Results results;
  final Function press;

  const SubjectWidget({Key? key,/*this.results,*/required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
       press();
      },
      child: Stack(children: [


            Container(
              width: 170,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: "https://picsum.photos/200/300",
                  placeholder: (context, url) => Image.asset(
                    constImage.placeholderImage,
                    fit: BoxFit.cover,
                  ),
                  errorWidget: (context, url, error) => Shimmer.fromColors(
                    baseColor: mapColor,
                    highlightColor: mapColor,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),

        Positioned(
            bottom: 20,
            left: 10,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(left: 20.0),

            child:
              Text(
                'View all',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              )),
                Row(children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5.0),
                    child: new LinearPercentIndicator(
                      width: 100,
                      animation: true,
                      lineHeight: 10.0,
                      animationDuration: 2500,
                      percent: 0.8,
                      barRadius: Radius.circular(20),
                      progressColor: Colors.yellow,
                    ),
                  ),
                  Text(
                    '30%',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),

                ],)
            ],)
        ),
      ],)

    );
  }
}
