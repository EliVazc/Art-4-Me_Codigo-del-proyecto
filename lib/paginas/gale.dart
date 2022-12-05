import 'package:flutter/material.dart';
import 'package:Art_4_Me/paginas/dibu.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Muestrario extends StatelessWidget {
  const Muestrario({super.key});

  @override
  Widget build(BuildContext context) {
    List<ImageDetails> _images = [
      ImageDetails(
          imageRuta:
              'https://pbs.twimg.com/media/FZIxZw8WAAErbeO?format=jpg&name=900x900',
          tipo: 'chibi',
          nombre: 'Full color',
          precio: '\$40.00',
          descripcionTitulo: 'Dibujo estilo chibi con sombreado y detalles.',
          descripcionDetallada:
              'Los adelantos deben ser del 50% para poder pedir modificaciones. Por personaje extra se agregan \$10.'),
      ImageDetails(
          imageRuta:
              'https://pbs.twimg.com/media/Fc1AWLzX0AEgx1S?format=jpg&name=medium',
          tipo: 'Anime',
          nombre: 'Medio cuerpo full color',
          precio: '\$40.00',
          descripcionTitulo:
              'Dibujo estilo anime a medio cuerpo con sombreado y detalles.',
          descripcionDetallada:
              'Los adelantos deben ser del 50% para poder pedir modificaciones. Por personaje extra se agregan \$10.'),
      ImageDetails(
          imageRuta:
              'https://pbs.twimg.com/media/FXC0xwGWIAEwpVz?format=jpg&name=medium',
          tipo: 'Chibi',
          nombre: 'Color simple',
          precio: '\$30.00',
          descripcionTitulo: 'Dibujo estilo chibi con coloreado simple.',
          descripcionDetallada:
              'Los adelantos deben ser del 50% para poder pedir modificaciones. Por personaje extra se agregan \$10.'),
      ImageDetails(
          imageRuta:
              'https://scontent-hou1-1.xx.fbcdn.net/v/t1.6435-9/69212095_1350419901781000_2297714070641442816_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=B9eMOSu1P0EAX8dZF6o&_nc_ht=scontent-hou1-1.xx&oh=00_AT_10PgHFH8tJJlkk4R7V7pk6RF5jWZgLpN_6LtstJlVqw&oe=6363E4FD',
          tipo: 'chibi-cartoon',
          nombre: 'Crikomono',
          precio: '\$10.00',
          descripcionTitulo: 'Dibujo estilo chibi-cartoon con colores planos',
          descripcionDetallada:
              'Los crikomonos no necesitan adelanto. Por personaje extra se agregan \$5.00'),
    ];
    return Scaffold(
      backgroundColor: Colors.purple[700],
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Text('Tabla de comisiones de EliNari',
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
                    tag: 'log1$index',
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
} // Fin muestrario

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
