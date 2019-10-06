import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {

  final TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  final String hint;
  final bool obscure;

  final String prefixIcon;

  RoundedTextField({Key key,
    this.hint,
    this.obscure,
    this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: hint,
          prefixIcon: prefixIcon == null ? null : Image.asset(
              'lib/assets/'+prefixIcon),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
  }
}