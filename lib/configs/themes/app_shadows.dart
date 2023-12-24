import 'package:flutter/material.dart';

class AppShadows {
  static List<BoxShadow> md = [
    const BoxShadow(
      color: Color(0x0F000000),
      blurRadius: 2,
      offset: Offset(0, 2),
      spreadRadius: 0,
    ),
    const BoxShadow(
      color: Color(0x11000000),
      blurRadius: 3,
      offset: Offset(0, 4),
      spreadRadius: 0,
    )
  ];
  static List<BoxShadow> lg = [
    const BoxShadow(
      color: Color(0x0A000000),
      blurRadius: 8,
      offset: Offset(0, 10),
      spreadRadius: 0,
    ),
    const BoxShadow(
      color: Color(0x19000000),
      blurRadius: 3,
      offset: Offset(0, 4),
      spreadRadius: 0,
    )
  ];
  static List<BoxShadow> xl = [
    const BoxShadow(
      color: Color(0x26000000),
      blurRadius: 25,
      offset: Offset(0, 25),
      spreadRadius: 0,
    )
  ];
}
