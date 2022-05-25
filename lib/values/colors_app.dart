part of '/values/theme_app.dart';




//Convertir de 0xFF000000 a FF000000 <-hexadecimal
Color hexToColor(String code) =>
    Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
