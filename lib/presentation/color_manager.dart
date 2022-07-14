import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#0078EF");
  static Color dartGray = HexColor.fromHex("#525252");
  static Color gray = HexColor.fromHex("#737477");
  static Color lightGray = HexColor.fromHex("#9E9E9E");
}

extension HexColor on Color {
  static Color fromHex(String hex) {
    hex = hex.replaceAll("#", "");
    if (hex.length == 6) {
      hex = "FF$hex";
    }
    return Color(int.parse(hex, radix: 16),);
  }
}