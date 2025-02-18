// ignore_for_file: prefer_const_constructors

import 'package:appcarrusel/models/item_menu_home.dart';
import 'package:appcarrusel/screens/destinos.dart';
import 'package:appcarrusel/screens/loginScreen.dart';
import 'package:appcarrusel/screens/widgets/detalle_destino.dart';
import 'package:appcarrusel/screens/splash/splashScreen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const rutaInicial = 'Splash';
  static final menuItem = <MenuItem>[
    MenuItem(
        ruta: 'Login',
        icono: Icons.check,
        nombre: 'Login',
        screen: LoginPage()),
    MenuItem(
        ruta: 'Splash',
        icono: Icons.check,
        nombre: 'Splash',
        screen: SplashScreen()),
    MenuItem(
        ruta: 'gradiente',
        icono: Icons.check,
        nombre: 'Gradiente Screen',
        screen: DestinoScreen()),
  ];

  /*Uso el menuItem para crear las rutas */
  static Map<String, Widget Function(BuildContext)> getRutas() {
    Map<String, Widget Function(BuildContext)> rutas = {};
    /*Debo retornar una función que construya el Widget */
    /**solo para el home, para que no salga en el main */
    rutas.addAll({'Splash': (BuildContext context) => SplashScreen()});
    rutas.addAll({
      'detallegradiente': (BuildContext context) => DetalleGradienteScreen()
    });

    for (final item in menuItem) {
      rutas.addAll({item.ruta: (BuildContext context) => item.screen});
    }
    return rutas;
  }
}
