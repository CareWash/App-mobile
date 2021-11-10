import 'package:app_carewash/@presentation/pages/home.dart';
import 'package:app_carewash/@presentation/pages/login.dart';
import 'package:app_carewash/@presentation/pages/main.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    'main': (BuildContext context) => MainPage(),
    'login': (BuildContext context) => LoginPage(),
    'home': (BuildContext context) => HomePage(),
  };
}
