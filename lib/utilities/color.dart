import 'dart:ui';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor"; // Adding FF for full opacity
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor, {double opacity = 1.0})
      : super(_getColorFromHex(hexColor));
}