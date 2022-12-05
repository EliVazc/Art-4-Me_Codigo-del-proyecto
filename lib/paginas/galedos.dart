import 'package:flutter/material.dart';
import 'package:Art_4_Me/paginas/arte.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Compartir extends StatelessWidget {
  const Compartir({super.key});

  @override
  Widget build(BuildContext context) {
    List<ImageDetails> _images = [
      ImageDetails(
          imageRuta:
              'https://pbs.twimg.com/media/Fhfk00EXkAAHeMr?format=jpg&name=900x900',
          tipo: 'Hice esto xD',
          descripcionDetallada: 'Hice este dibujo por diversión'),
      ImageDetails(
          imageRuta:
              'https://pbs.twimg.com/media/FfzgBP6WQAcbnC7?format=jpg&name=medium',
          tipo: 'Halloween 2022',
          descripcionDetallada: 'Esto lo hice para halloween'),
      ImageDetails(
          imageRuta:
              'https://pbs.twimg.com/media/FfI_sv_XwAoWpw-?format=jpg&name=large',
          tipo: 'Power!',
          descripcionDetallada:
              'No me he visto chainsaw man pero me gusta el diseño'),
      ImageDetails(
          imageRuta:
              'https://pbs.twimg.com/media/FdnvtOSXEAABVob?format=jpg&name=medium',
          tipo: 'Regalo',
          descripcionDetallada: 'Un regalo para una amistad de internet :D'),
      ImageDetails(
          imageRuta:
              'https://pbs.twimg.com/media/FdnOIaAXoAAn65i?format=jpg&name=medium',
          tipo: ':0',
          descripcionDetallada: 'Necesito mejorar mi anatomía XD'),
      ImageDetails(
          imageRuta:
              'https://pbs.twimg.com/media/FdmUZEpWIAABy-v?format=jpg&name=large',
          tipo: 'No sé',
          descripcionDetallada:
              'Hoy no tenía ganas de dibujar, disfruten este stickman'),
      ImageDetails(
          imageRuta:
              'https://pbs.twimg.com/media/FcbaOiyWYAAVRTR?format=jpg&name=900x900',
          tipo: 'Senpai!',
          descripcionDetallada:
              'Trate de experimentar con tradicional, ¿Cómo se ve?'),
    ];
    return Scaffold(
      backgroundColor: Colors.purple[700],
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Text('Galería de EliNari',
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
  final String descripcionDetallada;
  ImageDetails({
    required this.imageRuta,
    required this.tipo,
    required this.descripcionDetallada,
  });
}
