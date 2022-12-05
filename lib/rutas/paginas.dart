import 'package:flutter/material.dart';
import 'package:Art_4_Me/paginas/home.dart';
import 'package:Art_4_Me/paginas/galeria.dart';
import 'package:Art_4_Me/paginas/bases.dart';
import 'package:Art_4_Me/paginas/perfil.dart';
import 'package:Art_4_Me/paginas/inicio.dart';
import 'package:Art_4_Me/paginas/sesion.dart';
import 'package:Art_4_Me/paginas/galeriados.dart';
import 'package:Art_4_Me/rutas/routes.dart';

abstract class Paginas {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.home: (BuildContext context) => Home(),
    Routes.galeria: (BuildContext context) => Pagina1(),
    Routes.bases: (BuildContext context) => Pagina2(),
    Routes.user: (BuildContext context) => Pagina3(),
    Routes.inic: (BuildContext context) => Inicio(),
    Routes.sesi: (BuildContext context) => Sesion(),
    Routes.galdos: (BuildContext context) => Pagina4(),
  };
}
