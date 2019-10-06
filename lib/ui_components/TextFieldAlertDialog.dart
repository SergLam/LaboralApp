import 'package:flutter/material.dart';

class TextFieldAlertDialog extends StatelessWidget {

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
    this.buttonTitle})
      : super(key: key);

  displayDialog(BuildContext context) {

  }

  @override
  Widget build(BuildContext context) {
    return displayDialog(context);
  }

}