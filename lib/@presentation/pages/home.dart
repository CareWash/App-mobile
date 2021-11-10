import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _menu(context),
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          stretch: false,
          elevation: 20.0,
          // onStretchTrigger: () {
          //   return Future<void>.value();
          // },
          leading: Builder(
            builder: (context) => IconButton(
              splashRadius: 15.0,
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          centerTitle: true,
          title: const Text(
            'Inicio',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: const <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                  size: 28.0,
                ),
              ),
            ),
          ],
          backgroundColor: Colors.white,
        ),
      ]),
    );
  }

  Widget _menu(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: <Widget>[
            _menuheader(context),
            Container(
              color: Colors.white,
              child: const ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.black87,
                ),
                title: Text(
                  'Inicio',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.black87,
                ),
                title: Text(
                  'Información General',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const ListTile(
                leading: const Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.black87,
                ),
                title: Text(
                  'Agenda',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const ListTile(
                leading: const Icon(
                  Icons.history,
                  color: Colors.black87,
                ),
                title: Text(
                  'Historial de Servicios',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const ListTile(
                leading: const Icon(
                  Icons.production_quantity_limits,
                  color: Colors.black87,
                ),
                title: Text(
                  'Estado de productos',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const ListTile(
                leading: const Icon(
                  Icons.history_toggle_off_rounded,
                  color: Colors.black87,
                ),
                title: Text(
                  'Disponibilidad',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const ListTile(
                leading: const Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.black87,
                ),
                title: Text(
                  'Soporte',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '¡Síguenos en nuestras redes!',
                      style:
                          TextStyle(color: Color(0xff00122C), fontSize: 14.0),
                    ),
                    SizedBox(height: 10.0),
                    Row(children: <Widget>[]),
                    SizedBox(height: 30.0),
                    Text(
                      'Términos y condiciones',
                      style: TextStyle(
                          color: Color(0xff00122C),
                          fontSize: 12.0,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget _menuheader(BuildContext context) {
    return Container(
      height: 120.0,
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: DrawerHeader(
        margin: EdgeInsets.all(0.0),
        // padding: EdgeInsets.all(0.0),
        child: Container(
          height: 50.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Hola,',
                  style: TextStyle(color: Color(0xff00122C), fontSize: 15.0)),
              Text('Carlos Buenaventura',
                  style: TextStyle(color: Color(0xff00122C), fontSize: 26.0)),
              Text('Tu ID de Washman #123456',
                  style: TextStyle(color: Color(0xff00122C), fontSize: 14.0)),
            ],
          ),
        ),
      ),
    );
  }
}
