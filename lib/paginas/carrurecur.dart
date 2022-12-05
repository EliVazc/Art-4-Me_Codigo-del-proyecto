import 'package:Art_4_Me/paginas/sesion.dart';
import 'package:flutter/material.dart';
import 'package:Art_4_Me/paginas/carru.dart';
import 'package:Art_4_Me/paginas/carru2.dart';

class Carru_Recur extends StatelessWidget {
  const Carru_Recur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Cuerp(context),
    );
  } // Fin Build
} // Fin Pagina1

Widget Cuerp(BuildContext context) {
  final ancho = MediaQuery.of(context).size.width;
  final alto = MediaQuery.of(context).size.height;

  bool isDesktop(BuildContext context) => ancho >= 600;
  bool ismobile(BuildContext context) => ancho < 600;
  if (ismobile(context)) return Carrusel();
  if (isDesktop(context)) return Carrusell();
  return Scaffold();
}
