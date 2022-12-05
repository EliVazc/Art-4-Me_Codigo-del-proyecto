import 'package:flutter/material.dart';

class dibujos extends StatelessWidget {
  final String imageRuta;
  final String tipo;

  final String descripcionDetallada;
  const dibujos({
    Key? key,
    required this.imageRuta,
    required this.tipo,
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