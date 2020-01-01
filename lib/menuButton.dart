import 'package:flutter/material.dart';

//MenuButton, returns FlatButton with image, text, and link to next class, passed as arguments
class MenuButton extends StatelessWidget {
  final String imageDir;
  final String buttonText;
  final Widget link;

  MenuButton(this.imageDir, this.buttonText, this.link);

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