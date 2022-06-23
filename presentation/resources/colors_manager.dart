import 'package:flutter/cupertino.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#ED9728");
  static Color primaryOpacity70 = HexColor.fromHex("#B3ED9728");
  static Color darkPrimary = HexColor.fromHex("#D17D11");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color grey = HexColor.fromHex("#737477");
  static Color error = HexColor.fromHex("#E61F34");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');

    if (hexColorString.length == 6) {
      hexColorString = 'FF' + hexColorString;
    }

    return Color(int.parse(hexColorString));
  }
}
