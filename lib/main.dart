import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:workshop_dark_mode/generated/l10n.dart';
import 'package:workshop_dark_mode/utils/sizer/sizer_util.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  ThemeMode themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) =>  MaterialApp(
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            S.delegate
          ],
          supportedLocales: [
            Locale('en'), // Español,
            Locale('en'), // Español
          ],
          debugShowCheckedModeBanner: false,
          title: 'Taller',
        ));
  }

}