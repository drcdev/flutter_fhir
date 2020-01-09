import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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