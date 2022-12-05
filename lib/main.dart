import 'package:Art_4_Me/paginas/carru.dart';
import 'package:Art_4_Me/paginas/carru2.dart';
import 'package:Art_4_Me/paginas/carrurecur.dart';
import 'package:Art_4_Me/paginas/galeria.dart';
import 'package:Art_4_Me/paginas/inicio.dart';
import 'package:Art_4_Me/paginas/perfil.dart';
import 'package:Art_4_Me/paginas/sesion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:Art_4_Me/rutas/paginas.dart';
import 'package:Art_4_Me/paginas/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en', ''), // Ingles
          Locale('es', ''), // Español
        ],
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: MyAppHome());
  } //Build
} //Fin de clase MyApp

class MyAppHome extends StatefulWidget {
  const MyAppHome({super.key});

  @override
  State<MyAppHome> createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyAppHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //child: Text(AppLocalizations.of(context).mensaje),
      title: 'Art 4 Me',
      debugShowCheckedModeBanner: false,
      home: Carru_Recur(),
      routes: Paginas.route,
    );
  }
}
