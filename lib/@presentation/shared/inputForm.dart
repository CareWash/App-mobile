import 'package:flutter/material.dart';

class InputFormCustom extends StatefulWidget {
  String hintText;
  TextEditingController controller;
  bool obscure;
  TextInputType keyboard;
  InputFormCustom(
      {required this.hintText,
      required this.controller,
      required this.obscure,
      required this.keyboard});

  @override
  _InputFormCustomState createState() => _InputFormCustomState();
}

class _InputFormCustomState extends State<InputFormCustom> {
  bool focus = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: Focus(
        onFocusChange: (e) {
          setState(() {
            focus = e;
          });
        },
        child: TextField(
          keyboardType: widget.keyboard,
          controller: widget.controller,
          obscureText: widget.obscure,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 15.0, top: 32.0),
            hintText: widget.hintText,
            fillColor: Color(0xffE6E6E6),
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Color(0xffE6E6E6), width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Color(0xffE6E6E6), width: 1.5),
            ),
            labelStyle: TextStyle(
                fontFamily: 'Roboto', fontSize: 15, color: Colors.black),
            alignLabelWithHint: true,
          ),
        ),
      ),
    );
  }
}
