import 'package:flutter/material.dart';

class dibujos extends StatelessWidget {
  final String imageRuta;
  final String tipo;
  final String nombre;
  final String precio;
  final String descripcionTitulo;
  final String descripcionDetallada;
  const dibujos({
    Key? key,
    required this.imageRuta,
    required this.tipo,
    required this.nombre,
    required this.precio,
    required this.descripcionTitulo,
    required this.descripcionDetallada,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Tacos Mar y Tierra')),
      body: Column(children: [
        Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(imageRuta))),
              ),
              Container(
                width: double.infinity,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
              )
            ],
          ),
        ),
        Expanded(
            flex: 0,
            child: Container(
              //width: double.infinity,
              //height: 250,
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tipo,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 6.3,
                        fontFamily: 'CaveatBrush'),
                  ),
                  Text(
                    nombre,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 6.3),
                  ),
                  SizedBox(height: 20),
                  Text(
                    precio,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 6.3),
                  ),
                  SizedBox(height: 10),
                  Text(
                    descripcionTitulo,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    descripcionDetallada,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )),
        Expanded(
            flex: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      color: Colors.purple.shade900,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text('Editar', style: TextStyle(color: Colors.white)),
                ),
              ],
            )),
        Expanded(
          flex: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RaisedButton(
                color: Colors.purple.shade900,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Regresar',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        )
      ]),
    );
  } //Fin del build
} //fin clase Tacos