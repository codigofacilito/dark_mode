part of '/values/theme_app.dart';

ColorScheme get _colorSchemaLight => ColorScheme.light(
    primary: _colorPrimary,
    onPrimary: _colorOnPrimary,
    background: _colorBackground,
    onBackground: _colorOnBackground,
    surface: _colorSurface,
    onSurface: _colorOnSurface,
    error: _colorError,
    onError: _colorOnError,
    secondary: _colorSecondary,
    onSecondary: _colorOnSecondary,
    shadow: _colorGreyLight);

ColorScheme get _colorSchemaDark => ColorScheme.dark(
    primary: _colorPrimary,
    onPrimary: _colorOnPrimary,
    background: _colorDarkBackground,
    onBackground: _colorDarkOnBackground,
    surface: _colorDarkSurface,
    onSurface: _colorDarkOnSurface,
    secondary: _colorDarkSecondary,
    onSecondary: _colorDarkOnSecondary,
    error: _colorError,
    onError: _colorOnError,
    shadow: _colorWhite);

//General
Color get _colorPrimary => hexToColor("#16B3AC");

Color get _colorOnPrimary =>
    _colorWhite; //Color de los texto que van sobre primary

Color get _colorOnSecondary =>
    _colorWhite; //Color de los texto que van sobre secondary, el blanco resaltara en ambos sino crear uno para cada modo

Color get _colorError => hexToColor("#a43c3c"); //Color cuando surja un error

Color get _colorOnError =>
    _colorWhite; //Color del texto que se mostrara en error

//Modo Light
Color get _colorBackground =>
    _colorWhite; //Fondo de la aplicación en modo claro

Color get _colorOnBackground =>
    _colorBlack; //Textos que van sobre el fondo claro

Color get _colorSurface =>
    _colorWhite; // Elementos sobre el fondo ejemplo container y card, este tiene que tener una opaciad para reslatar con el fondo

Color get _colorOnSurface =>
    _colorBlack; //Color de los texto que van sobre surface

Color get _colorSecondary =>
    _colorPrimary; //Color para Floating action buttons, like sliders and switches Highlighting selected text Progress bars Links and headlines

//Modo Dark
Color get _colorDarkBackground =>
    _colorBlack; //Fondo de la aplicación en modo oscuro

Color get _colorDarkOnBackground =>
    _colorWhite; //Textos que van sobre el fondo oscuro

Color get _colorDarkSurface => _colorBlack.withOpacity(
    0.5); //Elementos sobre el fondo ejemplo container y card, este tiene que tener una semitransparencia para reslatar

Color get _colorDarkOnSurface =>
    _colorWhite; //Color de los texto que van sobre surface

Color get _colorDarkSecondary => hexToColor(
    "#F1CB49"); // Se usa el primario para que resalte con el fondo oscuro

Color get _colorDarkOnSecondary =>
    _colorBlack; // Se usa el primario para que resalte con el fondo oscuro

Color get _colorBlack => hexToColor("#393C3E");

Color get _colorWhite => hexToColor("#ffffff");

Color? get _colorGreyLight => Colors.grey[500];

//Convertir de 0xFF000000 a FF000000 <-hexadecimal
Color hexToColor(String code) =>
    Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
