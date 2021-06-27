import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'components.dart';

const String fontFamilyGS = "Google Sans";
const String fontFamilyR = "Roboto";

// Simple
const TextStyle headlineTextStyle = TextStyle(
    fontSize: 44, color: primaryLight);

const TextStyle headlineSecondaryTextStyle = TextStyle(
    fontSize: 28, color: primaryLight);

const TextStyle bodyTextStyle = TextStyle(
    fontSize: 16, color: primaryLight);

TextStyle bodyLinkTextStyle = bodyTextStyle.copyWith(color: primary);

const TextStyle buttonTextStyle = TextStyle(
    fontSize: 18, color: Colors.white);

// Carousel
const TextStyle carouselBlueTextStyle = TextStyle(
    fontSize: 100,
    color: Color(0xFF008AFE),
    fontFamily: fontFamilyGS,
    shadows: [
      Shadow(
        color: Color(0x40000000),
        offset: Offset(1, 1),
        blurRadius: 2,
      )
    ]);

const TextStyle carouselWhiteTextStyle = TextStyle(
    fontSize: 100,
    color: Colors.white,
    fontFamily: fontFamilyGS,
    shadows: [
      Shadow(
        color: Color(0x40000000),
        offset: Offset(1, 1),
        blurRadius: 2,
      )
    ]);
