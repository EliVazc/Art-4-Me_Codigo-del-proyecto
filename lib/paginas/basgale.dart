import 'package:flutter/material.dart';
import 'package:Art_4_Me/paginas/dibu.dart';
//import 'package:taqueria/tacos.dart';
//import 'package:taqueria/dibu.dart';
import 'package:Art_4_Me/paginas/dibu.dart';

List<ImageDetails> _images = [
  ImageDetails(
      imageRuta:
          'https://pbs.twimg.com/media/E8ZwL7jWYAEZnWB?format=jpg&name=900x900',
      tipo: 'Chibi',
      nombre: 'Base doble',
      precio: '\$10.00',
      descripcionTitulo: 'Base estilo chibi para dos personajes.',
      descripcionDetallada:
          'Las bases compradas pueden ser utilizadas libremente excepto para su reventa.'),
  ImageDetails(
      imageRuta:
          'https://pbs.twimg.com/media/FebmKjYUcAABBMM?format=jpg&name=large',
      tipo: 'Chibi',
      nombre: 'Stickers (varios)',
      precio: '\$25.00',
      descripcionTitulo: 'Base de 12 stickers chibi.',
      descripcionDetallada:
          'Las bases compradas pueden ser utilizadas libremente excepto para su reventa'),
];

class Muesbase extends StatelessWidget {
  const Muesbase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[700],
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Text('Comisiones de bases de EliNari',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'CaveatBrush',
                  fontSize: 30)),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => dibujos(
                                  imageRuta: _images[index].imageRuta,
                                  tipo: _images[index].tipo,
                                  nombre: _images[index].nombre,
                                  precio: _images[index].precio,
                                  descripcionTitulo:
                                      _images[index].descripcionTitulo,
                                  descripcionDetallada:
                                      _images[index].descripcionDetallada,
                                )));
                  },
                  child: Hero(
                    tag: 'log2$index',
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(_images[index].imageRuta),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                );
              },
              itemCount: _images.length,
            ),
          )),
          Expanded(
            flex: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  color: Colors.purple.shade900,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Inicio',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  } //fin build
} // Fin muesbase

class ImageDetails {
  final String imageRuta;
  final String tipo;
  final String nombre;
  final String precio;
  final String descripcionTitulo;
  final String descripcionDetallada;
  ImageDetails({
    required this.imageRuta,
    required this.tipo,
    required this.nombre,
    required this.precio,
    required this.descripcionTitulo,
    required this.descripcionDetallada,
  });
}
