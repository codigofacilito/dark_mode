import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:workshop_dark_mode/generated/l10n.dart';
import 'package:workshop_dark_mode/utils/sizer/sizer_util.dart';
import 'package:workshop_dark_mode/values/theme_app.dart';
import 'package:workshop_dark_mode/views/screens/login_screen.dart';

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
          theme: themeDataLight,
          darkTheme: themeDataDark,
          themeMode: themeMode,
          home: LoginScreen(changeTheme),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            S.delegate
          ],
          supportedLocales: [
            Locale('es'), // Español,
            Locale('en'), // Español
          ],
          debugShowCheckedModeBanner: false,
          title: 'Taller',

        ));
  }

  changeTheme(ThemeMode themeMode){
    setState(() {
      this.themeMode=themeMode;
    });
  }

}