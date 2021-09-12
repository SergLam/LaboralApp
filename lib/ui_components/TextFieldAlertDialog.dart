import 'package:flutter/material.dart';

class TextFieldAlertDialog {

  TextEditingController textFieldController = TextEditingController();

  final String title;
  final String inputHint;
  final String buttonTitle;

  TextFieldAlertDialog({Key key,
    @required
    this.title,
    @required
    this.inputHint,
    @required
    this.buttonTitle});

  displayDialog(BuildContext context) {

    Widget cancelButton = new FlatButton(
      child: new Text(this.buttonTitle),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text(this.title, textAlign: TextAlign.center),
      content: TextField(
        controller: textFieldController,
        decoration: InputDecoration(hintText: this.inputHint),
      ),
      actions: <Widget>[
        cancelButton
      ],
    );

    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return alert;
      },
    );

  }


}