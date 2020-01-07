import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_fhir/testing.dart';
import 'package:flutter_fhir/register.dart';
import 'package:flutter_fhir/patientActivity.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_fhir/syncServer.dart';
import 'package:flutter_fhir/settings.dart';
import 'package:flutter_fhir/appLocalizations.dart';

//Calls menu class
void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        Locale('en'), //English
        Locale('es'), //Spanish
      ],
      localizationsDelegates: [
        const AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        // Check if the current device locale is supported
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        // If the locale of the device is not supported, use the first one
        // from the list (English, in this case).
        return supportedLocales.first;
      },
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
//        appBar: AppBar(
//          title: Text(  AppLocalizations.of(context).translate("new_pt")),//"CHOP's FHIRflies"),
//          backgroundColor: Colors.blue[900],
//        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            //calls MenuButton class for each one, passes image, text, and class to call
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
//                  PageButton(
//                      'images/patient.png',
//                      AppLocalizations.of(context).translate('new_pt'),
//                      Register()),
                  ActionButton('images/sync.png', 'Sync with server', syncServer, 'get'),
                  PageButton('images/chop.png', 'Settings', Settings()),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PageButton('images/activities.png', 'Patient Activities', PatientActivity()),
                  PageButton('images/testing.png', 'Testing', Testing()),
                  ActionButton('images/trash.png', 'Delete Files', deleteFiles)
                ],
              ),
            ],
          ),
        ),
    );
  }
}

//deletes all files in application document directory ending in .txt
deleteFiles() async{
  final directory = await getApplicationDocumentsDirectory(); //get current directory
  directory.list(recursive: false, followLinks: true).listen((FileSystemEntity entity)
  {
    print(entity.path);
    if (entity.path.contains('.txt')) {
      File f = File(entity.path);
      f.delete();
    }
  });
}

//PageButton, returns FlatButton with image, text, and link to next page, passed as arguments
class PageButton extends StatelessWidget {
  final String imageDir;
  final String buttonText;
  final Widget link;

  PageButton(this.imageDir, this.buttonText, this.link);

  @override
  Widget build(context) {
    return FlatButton(
        child: Column(
          children: <Widget>[
            ClipRRect(child: Image.asset(imageDir, height: 150, width: 150),),
            Text(buttonText, style: TextStyle(color: Colors.white),),
          ],
        ),
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => link),);
        }
    );
  }
}

//ActionButton, returns FlatButton with image, text, and function to call, passed as arguments
class ActionButton extends StatelessWidget {
  final String imageDir;
  final String buttonText;
  final Function func;
  final String arg1;

  ActionButton(this.imageDir, this.buttonText, this.func, [this.arg1]);

  @override
  Widget build(context) {
    return FlatButton(
      onPressed: () {
        if(arg1==null){func();}
        else{func(arg1);}
      },
      child: Column(
        children: <Widget>[
          ClipRRect(child: Image.asset(imageDir, height: 150, width: 150),),
          Text(buttonText, style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}