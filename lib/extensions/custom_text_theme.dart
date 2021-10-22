import 'package:flutter/material.dart';

class CustomTextTheme {
  final TextStyle light12;
  final TextStyle light14;
  final TextStyle light16;
  final TextStyle regular12;
  final TextStyle regular14;
  final TextStyle regular16;
  final TextStyle regular18;
  final TextStyle bold12;
  final TextStyle bold14;
  final TextStyle bold16;
  final TextStyle bold18;

  CustomTextTheme.light({
    this.light12 = const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 12,
      color: Colors.black,
      letterSpacing: 0,
    ),
    this.light14 = const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 14,
      color: Colors.black,
      letterSpacing: 0,
    ),
    this.light16 = const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 16,
      color: Color(0xFF909090),
      letterSpacing: 0,
    ),
    this.regular12 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Colors.black,
      letterSpacing: 0,
    ),
    this.regular14 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Colors.black,
      letterSpacing: 0,
    ),
    this.regular16 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: Colors.black,
      letterSpacing: 0,
    ),
    this.regular18 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 19,
      color: Colors.black,
      letterSpacing: 0,
    ),
    this.bold12 = const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 12,
      color: Colors.black,
      letterSpacing: 0,
    ),
    this.bold14 = const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14,
      color: Colors.black,
      letterSpacing: 0,
    ),
    this.bold16 = const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: Colors.black,
      letterSpacing: 0,
    ),
    this.bold18 = const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18,
      color: Colors.black,
      letterSpacing: 0,
    ),
  });

  CustomTextTheme.dark({
    this.light12 = const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 12,
      color: Colors.white,
      letterSpacing: 0,
    ),
    this.light14 = const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 14,
      color: Colors.white,
      letterSpacing: 0,
    ),
    this.light16 = const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 16,
      color: Color(0xFF909090),
      letterSpacing: 0,
    ),
    this.regular12 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Colors.white,
      letterSpacing: 0,
    ),
    this.regular14 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Colors.white,
      letterSpacing: 0,
    ),
    this.regular16 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: Colors.white,
      letterSpacing: 0,
    ),
    this.regular18 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: Colors.white,
      letterSpacing: 0,
    ),
    this.bold12 = const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 12,
      color: Colors.white,
      letterSpacing: 0,
    ),
    this.bold14 = const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14,
      color: Colors.white,
      letterSpacing: 0,
    ),
    this.bold16 = const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: Colors.white,
      letterSpacing: 0,
    ),
    this.bold18 = const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18,
      color: Colors.white,
      letterSpacing: 0,
    ),
  });
}
