import 'package:flutter/material.dart';

class AppColor {
  static const Color primaryColor = Color(0xFF247CFF);
  // ── Gray ───────────────────────────────────────────
  static const Color grayLighter = Color(0xFFA2A2A2);
  static const Color grayNormal = Color(0xFF313131);
  static const Color grayDark = Color(0xFF111111);
  // ── Semantic ───────────────────────────
  static const Color error = Color(0xFFED5151);
  static const Color success = Color(0xFF00FF55);
  // ── Gradient ───────────────────────────
  static const LinearGradient cardGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xFF313131), Color(0xFF111111)],
  );
  static const LinearGradient shadowContainer = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0x00050505), Color(0xFF050505)],
    stops: [0.0, 0.24],
  );
}
