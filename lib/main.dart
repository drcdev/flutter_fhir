import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fhir/mainMenu.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: _Main(),
  ));
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
        decoration: inputDecoration("Username"));

    final passwordField = TextField(
        controller: password,
        obscureText: true,
        style: whiteText,
        decoration: inputDecoration("Password"));

    final loginButon = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xFF1A237E),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            if(userName.text != 'drgrey' || password.text != 'chopchop'){
              setState(() => incorrect = true);
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainMenu()));
            }
          },
          child: Text("Login", textAlign: TextAlign.center, style: whiteText),
        ));

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 15.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 220.0,
                    child: Image.asset(
                      "images/drflag.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  splashText,
                  SizedBox(height: 10.0),
                  userField,
                  SizedBox(height: 25.0),
                  passwordField,
                  SizedBox(height: 3.0),
                  Visibility(
                      visible: incorrect,
                      child: Text("The username or password is incorrect",
                          style: TextStyle(color: Colors.red))),
                  SizedBox(height: 35.0),
                  loginButon,
                  SizedBox(height: 15.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
