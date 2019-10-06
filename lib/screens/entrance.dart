import 'package:flutter/material.dart';
import 'package:laboral_app/ui_components/RoundedTextField.dart';
import 'package:laboral_app/ui_components/RoundedButton.dart';
import 'package:laboral_app/localization/AppLocalizations.dart';
import 'package:laboral_app/ui_components/TextFieldAlertDialog.dart';

class EntrancePage extends StatelessWidget {
  EntrancePage({Key key, this.title}) : super(key: key);

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  TextEditingController textFieldController = TextEditingController();

  final String title;

  Future<void> displayDialog(BuildContext context) async {

    Widget cancelButton = new FlatButton(
      child: new Text('Button'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text('Title', textAlign: TextAlign.center),
      content: TextField(
        controller: textFieldController,
        decoration: InputDecoration(hintText: AppLocalizations.of(context).translate('email')),
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                  child: Image.asset(
                    "lib/assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                RoundedTextField(hint: AppLocalizations.of(context).translate('email'), obscure: false),
                SizedBox(height: 25.0),
                RoundedTextField(hint: AppLocalizations.of(context).translate('password'), obscure: true),
                SizedBox(
                  height: 35.0,
                ),
                RoundedButton(
                    AppLocalizations.of(context).translate('login'),
                        () => { displayDialog(context) }
                        ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


