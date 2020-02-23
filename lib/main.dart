import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/util/appLocalizations.dart';
import 'package:flutter_fhir/mainMenu.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {

  //Allows initialization of the DB the first time
  WidgetsFlutterBinding.ensureInitialized();
  var fhirDb = new DatabaseHelper();

  runApp(MaterialApp(
      home: _Main(),

      //allows English and Spanish locales
      supportedLocales: [Locale('en'), Locale('es')],

      // These delegates make sure that the localization data for the proper language is loaded
      localizationsDelegates: [
        // A class which loads the translations from JSON files
        AppLocalizations.delegate,
        // Built-in localization of basic text for Material widgets
        GlobalMaterialLocalizations.delegate,
        // Built-in localization for text direction LTR/RTL
        GlobalWidgetsLocalizations.delegate,
      ],
      // Returns a locale which will be used by the app
      localeResolutionCallback: (locale, supportedLocales) {
        // Check if the current device locale is supported
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        // If the locale of the device is not supported, use the first one
        // from the list (English).
        return supportedLocales.first;
      }));
}

class _Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<_Main> {
  var userName = TextEditingController();
  var password = TextEditingController();
  bool incorrect = false;

  @override
  void dispose() {
    userName.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  final TextStyle whiteText = TextStyle(color: Colors.white);

  final OutlineInputBorder whiteBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(20));

  final splashText = Text("Salud\nDominicana",
      textAlign: TextAlign.center,
      style: GoogleFonts.courgette(
          textStyle: TextStyle(color: Colors.red, fontSize: 40)));

  InputDecoration inputDecoration(String hint) {
    return (InputDecoration(
      hintText: hint,
      hintStyle: whiteText,
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      enabledBorder: whiteBorder,
      focusedBorder: whiteBorder,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final userField = TextField(
        controller: userName,
        obscureText: false,
        style: whiteText,
        decoration: inputDecoration(
            AppLocalizations.of(context).translate("username")));

    final passwordField = TextField(
        controller: password,
        obscureText: true,
        style: whiteText,
        decoration: inputDecoration(
            AppLocalizations.of(context).translate("password")));

    final loginButon = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xFF1A237E),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
//            if (userName.text != 'drgrey' || password.text != 'chopchop') {
//              setState(() => incorrect = true);
//            } else {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainMenu()));
//            }
          },
          child: Text("Login", textAlign: TextAlign.center, style: whiteText),
        ));

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 15.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Image.asset(
                "assets/images/drflag.png",
                fit: BoxFit.contain,
              ),
            ),
            splashText,
            Expanded(flex: 1, child: SizedBox(height: 10.0)),
            userField,
            Expanded(flex: 1, child: SizedBox(height: 25.0)),
            passwordField,
            Expanded(flex: 1, child: SizedBox(height: 3.0)),
            Visibility(
                visible: incorrect,
                child: Text(
                    AppLocalizations.of(context).translate('incorrectPw'),
                    style: TextStyle(color: Colors.red))),
            Expanded(flex: 1, child: SizedBox(height: 35.0)),
            loginButon,
            Expanded(flex: 1, child: SizedBox(height: 15.0)),
          ],
        ),
      ),
    );
  }
}
