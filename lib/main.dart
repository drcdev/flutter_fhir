import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fhir/util/db.dart';
import 'package:flutter_fhir/util/appLocalizations.dart';
import 'package:flutter_fhir/mainMenu.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var fhirDb = new DatabaseHelper();

  runApp(MaterialApp(
      home: _Main(),
      supportedLocales: [Locale('en', 'US'), Locale('es', 'AR')],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
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
//              er

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
