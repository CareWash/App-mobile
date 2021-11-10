import 'package:app_carewash/@presentation/shared/btnForm.dart';
import 'package:app_carewash/@presentation/shared/inputForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[_fondo(context), _form(context), _botonera(context)],
      ),
    );
  }

  Widget _fondo(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      width: _size.width,
      color: Colors.white,
    );
  }

  Widget _form(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width,
      margin: EdgeInsets.only(top: 30.0),
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'INICIAR SESIÓN',
              style: TextStyle(
                  color: Color(0xff00122C),
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Text(
              'Completa los recuadros para ingresar',
              style: TextStyle(
                  color: Color(0xff00122C),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 35.0),
            Text('Correo electrónico',
                style: TextStyle(
                    color: Color(0xff00122C),
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
            SizedBox(height: 10.0),
            InputFormCustom(
                hintText: 'Escribe aquí',
                controller: _emailController,
                obscure: false,
                keyboard: TextInputType.text),
            SizedBox(height: 20.0),
            Text('Contraseña',
                style: TextStyle(
                    color: Color(0xff00122C),
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
            SizedBox(height: 10.0),
            InputFormCustom(
                hintText: 'Escribe aquí',
                controller: _passController,
                obscure: true,
                keyboard: TextInputType.text),
            SizedBox(height: 50.0),
            Text('¿Olvidó su contraseña?',
                style: TextStyle(
                    color: Color(0xff00122C),
                    fontSize: 15,
                    fontWeight: FontWeight.w400)),
          ]),
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
              text: 'Ingresar',
              color: Color(0xff00122C),
              border: Color(0xff00122C),
              textColor: Colors.white,
              callback: () {
                Navigator.pushNamed(context, 'home');
              })),
    );
  }
}
