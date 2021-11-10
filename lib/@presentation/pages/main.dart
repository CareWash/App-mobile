import 'package:app_carewash/@presentation/shared/btnForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[_fondo(context), _botonera(context)],
      ),
    );
  }

  Widget _fondo(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      width: _size.width,
      color: Color(0xff00122C),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/logo.svg',
            height: 55.0,
            width: 55.0,
            fit: BoxFit.scaleDown,
            color: Colors.white,
          ),
          Text('para',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              )),
          SizedBox(height: 16.0),
          Text('WASHMAN',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }

  Widget _botonera(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 20.0,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          width: _size.width,
          child: BtnCustomForm(
              text: 'INICIAR SESIÓN',
              color: Colors.white,
              border: Colors.white,
              textColor: Color(0xff00122C),
              callback: () {
                Navigator.pushNamed(context, 'login');
              })),
    );
  }
}
