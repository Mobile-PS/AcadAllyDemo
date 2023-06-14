

import 'package:flutter/material.dart';

import 'const_color.dart';
import 'const_image.dart';


const kAnimationDuration = Duration(microseconds: 100);

final constImage = ConstImage();


const kSmallDescStyle = TextStyle(fontSize: 35.0, color: Colors.white,fontFamily:'CastelTBook' );

const kMediumtextStyle = TextStyle(fontSize: 22.0, color: kTextcolor,fontFamily:'CasteltBold' );
const kMediumtextStylewhite = TextStyle(fontSize: 22.0, color: Colors.white,fontFamily:'CastelTBook' );

const ktextStyle16 = TextStyle(fontSize: 16.0, color: Colors.black,fontFamily:'CastelTBook' );
const ktextStyle16green = TextStyle(fontSize: 16.0, color: kTextcolor1,fontFamily:'CastelTBook' );
const ktextStyle16green1 = TextStyle(fontSize: 16.0, color: kTextcolor,fontFamily:'CastelTBook' );


const ktextStyle20 = TextStyle(fontSize: 20.0, color: Colors.white,fontFamily:'CastelTBook' );
const ktextStyle14 = TextStyle(fontSize: 14.0, color: Colors.black,fontFamily:'CastelTBook' );
const ktextStyle13 = TextStyle(fontSize: 13.0, color: Colors.black,fontFamily:'CastelTBook' );
const ktextStyle13green = TextStyle(fontSize: 13.0, color: kTextcolor8,fontFamily:'CastelTBook' );

const ktextStyle12 = TextStyle(fontSize: 12.0, color: Colors.black,fontFamily:'CastelTBook');
const ktextStyle20black = TextStyle(fontSize: 20.0, color: Colors.black,fontFamily:'CastelTBook' );
const ktextStyle19 = TextStyle(fontSize: 19.0, color: Colors.black,fontFamily:'CastelTBook');
const ktextStyle24pblack = TextStyle(fontSize: 24.0, color: Colors.black,fontFamily:'CastelTBook' );
const ktextStyle20green1 = TextStyle(fontSize: 20.0, color: kTextcolor,fontFamily:'CastelTBook' );
const ktextStyle18 = TextStyle(fontSize: 18.0, color: Colors.black,fontFamily:'CastelTBook');
const ktextStyle15 = TextStyle(fontSize: 15.0, color: kTextcolor5,fontFamily:'CastelTBook');
const ktextStyle15green = TextStyle(fontSize: 18.0, color: kTextcolor,fontFamily:'CastelTBook');
const ktextStyle15pblack = TextStyle(fontSize: 17.0, color: Colors.black,fontFamily:'CastelTBook' );
const ktextStyle15pblue = TextStyle(fontSize: 17.0, color: kTextcolor6,fontFamily:'CastelTBook' );


const kteststyle16black = TextStyle(fontSize: 16.0, color: Colors.black,fontFamily:'CasteltBold' );

const kteststyle60 = TextStyle(fontSize: 60.0, color: kTextcolor2,fontFamily:'CasteltBold' );
const kteststyle21 = TextStyle(fontSize: 21.0, color: kTextcolor3,fontFamily:'CasteltBold' );
const kteststyle21profile = TextStyle(fontSize: 21.0, color: kTextcolor,fontFamily:'CasteltBold' );
const kteststyle22profile = TextStyle(fontSize: 22.0, color: Colors.black,fontFamily:'CasteltBold' );
const kteststyle16 = TextStyle(fontSize: 16.0, color: kTextcolor9,fontFamily:'CasteltBold' );
const kteststyle161 = TextStyle(fontSize: 16.0, color: kTextcolor9,fontFamily:'CastelTBook' );

const kteststyle16red = TextStyle(fontSize: 16.0, color: kTextcolor10,fontFamily:'CasteltBold' );
const kteststyle16red1 = TextStyle(fontSize: 16.0, color: kTextcolor10,fontFamily:'CastelTBook' );

const ktextStyle20bold = TextStyle(fontSize: 20.0, color: Colors.black,fontFamily:'CasteltBold' );


const ktextstyle38 = TextStyle(fontSize: 38.0,height: 1, color: Colors.white,fontFamily:'CasteltBold' );

const ktextStyle24black = TextStyle(fontSize: 24.0, color: Colors.black,fontFamily:'CasteltBold');
const ktextStyle24Green = TextStyle(fontSize: 21.0, color: kTextcolor,fontFamily:'CasteltBold' );
const ktextStyle17Green = TextStyle(fontSize: 17.0, color: kTextcolor4,fontFamily:'CasteltBold' );
const ktextStyle18Green = TextStyle(fontSize: 18.0, color: kTextcolor,fontFamily:'CasteltBold' );
const ktextStyle24white = TextStyle(fontSize: 24.0, color: Colors.white,fontFamily:'CasteltLigh' );


/*
final submittedPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: const TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
    borderRadius: BorderRadius.circular(10),
  ),
);
*/

final customBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10.0),
  borderSide: BorderSide(
    color: borderColor,
    width: 1.0,
  ),
);

final customfocusBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10.0),
  borderSide: BorderSide(
    color: transparent,
    width: 1.0,
  ),
);

final customerrorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10.0),
  borderSide: BorderSide(
    color: Colors.red,
    width: 1.0,
  ),
);


final customBorder1 = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10.0),
  borderSide: BorderSide(
    color: transparent,
    width: 1.0,
  ),
);

final RegExp emailRegex = new RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

final RegExp numberRegex = new RegExp(r"^[0-9]$");

final RegExp letterRegex = new RegExp(r'[a-zA-Z]');

final RegExp minEightletterRegex = new RegExp(r'[0-9]');

final RegExp urlRegex = new RegExp(
    r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?");
