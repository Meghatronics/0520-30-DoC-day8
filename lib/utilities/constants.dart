import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Theme Colors
const Color kThemeWhite1 = Color(0xFFFFFFFF);
const Color kThemeWhite2 = Color(0xFFAAAAAA);
const Color kThemeLogoGreen = kThemeColor3;
const Color kThemeLogoBlack = Color(0xCC000000);
const Color kThemeColor1 = Color(0xFFF4F9F4);
const Color kThemeColor2 = Color(0xFFA7D7C5);
const Color kThemeColor3 = Color(0xFF74B49B);
const Color kThemeColor4 = Color(0xFF5C8D89);

//Text Styles
final kFindEventsLabelTextStyle = GoogleFonts.quicksand(
  color: kThemeLogoBlack,
  fontSize: 40,
  fontWeight: FontWeight.w700,
);

final kExploreScrollBarItemTextStyle = GoogleFonts.quicksand(
  color: kThemeColor1,
  fontSize: 35,
  fontWeight: FontWeight.w800,
);

final kExploreBracketTextStyle = GoogleFonts.sourceCodePro(
  fontSize: 70,
  color: kThemeLogoBlack,
);

final kEventsCardNameTextStyle = GoogleFonts.quicksand(
  color: kThemeColor1,
  fontSize: 30,
  fontWeight: FontWeight.w600,
);

final kEventsCardLocationTextStyle = GoogleFonts.quicksand(
  color: kThemeColor1,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

final kEventsCardOrganiserTextStyle = GoogleFonts.quicksand(
  color: kThemeColor1,
  fontSize: 20,
  fontWeight: FontWeight.w500,
);


//Sizes
Size kScreenSize;
enum LogoSize {
  large,
  medium,
  small,
}

//Assets

const ImageProvider kImage1 = AssetImage('images/image1.jpg');
const ImageProvider kImage2 = AssetImage('images/image2.jpg');
const ImageProvider kImage3 = AssetImage('images/image3.jpg');
