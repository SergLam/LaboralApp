import 'package:flutter/material.dart';
import 'package:laboral_app/ui_components/rounded_text_field.dart';
import 'package:laboral_app/ui_components/rouned_button.dart';

class EntrancePage extends StatelessWidget {
  EntrancePage({Key key, this.title}) : super(key: key);

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  final String title;

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "lib/assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                RoundedTextField(hint: "Email", obscure: false),
                SizedBox(height: 25.0),
                RoundedTextField(hint: "Password", obscure: true),
                SizedBox(
                  height: 35.0,
                ),
                RoundedButton("Login"),
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


