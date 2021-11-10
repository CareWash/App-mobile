import 'package:flutter/material.dart';

class BtnCustomForm extends StatelessWidget {
  final String text;
  final Color color;
  final Color border;
  final Color textColor;
  final VoidCallback callback;

  const BtnCustomForm({
    required this.text,
    required this.color,
    required this.border,
    required this.textColor,
    required this.callback,
  });
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width,
      height: 55.0,
      decoration: BoxDecoration(
        border: Border.all(color: border, width: 1.0),
        borderRadius: BorderRadius.circular(6.0),
        // color: color,
      ),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(5.0),
        child: InkWell(
            borderRadius: BorderRadius.circular(5.0),
            child: _withoutIcon(context),
            onTap: callback),
      ),
    );
  }

  Widget _withoutIcon(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 15.0,
              ),
            ],
          ),
          Text(
            text,
            style: TextStyle(
                color: textColor,
                fontFamily: 'Roboto',
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          Container(
            width: 25.0,
          ),
        ],
      ),
    );
  }

  Widget _withIcon(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Center(
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Open Sans',
            fontSize: 18,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
