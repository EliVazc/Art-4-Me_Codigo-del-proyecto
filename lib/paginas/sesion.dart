import 'package:flutter/material.dart';
import 'package:Art_4_Me/rutas/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Sesion extends StatelessWidget {
  const Sesion({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: (Cuerpo(context)),
    ));
  } // Fin BUILD
} // Fin CLASS

/*class Sesion extends StatefulWidget {
  const Sesion({super.key});

  @override
  State<Sesion> createState() => _SesionState();
}

class _SesionState extends State<Sesion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: (Cuerpo(context)),
    ));
  }
}*/

Widget Cuerpo(BuildContext context) {
  final ancho = MediaQuery.of(context).size.width;
  final alto = MediaQuery.of(context).size.height;

  bool isDesktop(BuildContext context) => ancho >= 600;
  bool ismobile(BuildContext context) => ancho < 600;

  TextEditingController emailcontroller = TextEditingController();
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            'https://images.unsplash.com/photo-1519750783826-e2420f4d687f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
        fit: BoxFit.cover,
      ),
    ),
    // margin: isDesktop(context) ? EdgeInsets.all(30) : EdgeInsets.all(20),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (ismobile(context))
            Column(
              children: [
                bienvenida(),
                comen(context),
                campoUsuario(),
                campoPass(),
                BotonIngreso(context),
                crear()
              ],
            ),
          if (isDesktop(context))
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    bienvenida(),
                    comen(context),
                    campoUsuario(),
                    campoPass(),
                    BotonIngreso(context),
                    crear()
                  ],
                )),
                Expanded(
                    child: ListView(
                  shrinkWrap: true,
                  children: [
                    Image.asset('assets/fonts/gato2.png'),
                  ],
                )),
              ],
            )
        ],
      ),
    ),
  );
} // Fin WCuerpo

//widgets desktop
Widget bienvenidadesk() {
  return Text('Art 4 Me',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'CaveatBrush',
        color: Color.fromARGB(255, 116, 51, 128),
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ));
}

Widget campoUsuariodesk() {
  return Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Usuario',
        filled: true,
        fillColor: Colors.white,
      ),
    ),
  );
} //fin de usuario

//Widgets mobile
Widget bienvenida() {
  return Text('Art 4 Me',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'CaveatBrush',
        color: Color.fromARGB(255, 116, 51, 128),
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ));
}

Widget comen(BuildContext context) {
  return Text('Inicia sesión y explora',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'CaveatBrush',
        color: Color.fromARGB(255, 116, 51, 128),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ));
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Usuario',
        filled: true,
        fillColor: Colors.white,
      ),
    ),
  );
} //fin de usuario

Widget campoPass() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Contraseña',
        filled: true,
        fillColor: Colors.white,
      ),
    ),
  );
} //fin de pass

Widget botonEntrar() {
  return TextButton(
    onPressed: () {},
    child: Text('Ingresar a tu cuenta'),
    style: TextButton.styleFrom(
        primary: Colors.white, backgroundColor: Colors.purple.shade900),
  );
} // Fin CampoPassword

Widget BotonIngreso(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.pushNamed(context, Routes.home);
    },
    child: Text("Ingresar"),
    style: TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: Colors.purple.shade900,
    ),
  );
}

Widget crear() {
  return Text('Crear un nuevo usuario',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'CaveatBrush',
        color: Color.fromARGB(255, 116, 51, 128),
        fontSize: 15,
      ));
}

Widget olvidar() {
  return Text('Olvide mi contraseña',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'CaveatBrush',
        color: Color.fromARGB(255, 116, 51, 128),
        fontSize: 15,
      ));
}
