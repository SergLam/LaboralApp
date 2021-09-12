import 'package:flutter/material.dart';

typedef void VoidCallback();

class RoundedButton extends StatelessWidget {

  final TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  final String title;
  final VoidCallback action;

  RoundedButton(this.title, this.action);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          action();
        },
        child: Text(title,
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}