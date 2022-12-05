import 'package:Art_4_Me/rutas/routes.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

const double backWidth = 340;
const double backHeight = 550;

class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fonts/portada.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SizedBox(
            height: backHeight,
            width: backWidth,
            child: Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Positioned(
                  key: key,
                  top: 0,
                  bottom: 0,
                  width: backWidth,
                  child: CreditCard(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextStyles {
  static const nombreTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w300,
    fontSize: 20,
  );
} // fin de la clase TextStyles

class TextStyles2 {
  static const nombreTextStyle2 = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w300,
    fontSize: 30,
    fontFamily: 'CaveatBrush',
  );
}

class TextStyles3 {
  static const nombreTextStyle3 = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w300,
    fontSize: 20,
    fontStyle: FontStyle.italic,
  );
}

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
            border:
                Border.all(color: Colors.white.withOpacity(0.5), width: 1.5),
          ),
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  profilepic(),
                  const SizedBox(height: 7),
                  const Text(
                    'EliNari',
                    style: TextStyles2.nombreTextStyle2,
                  ),
                  const Text(
                    'Dibujante por hobby',
                    style: TextStyles.nombreTextStyle,
                  ),
                  const Text(
                    '21 años',
                    style: TextStyles.nombreTextStyle,
                  ),
                  const Text(
                    '"¡¡¡Bienvenido a mi perfil!!!"',
                    style: TextStyles3.nombreTextStyle3,
                  ),
                ],
              ),
              botInicio(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget profilepic() {
  return Container(
    child: ClipOval(
        child: Image.asset(
      'assets/fonts/Avatar.jpg',
      width: 200,
      height: 200,
      fit: BoxFit.contain,
      alignment: Alignment.topCenter,
    )),
  );
}

Widget botInicio(BuildContext context) {
  Padding(padding: EdgeInsets.symmetric(vertical: 60));
  return RaisedButton(
    color: Color.fromARGB(255, 116, 51, 128),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    onPressed: () {
      Navigator.pushNamed(context, Routes.home);
    },
    child: Text(
      'Regresar',
      style: TextStyle(color: Colors.white),
    ),
  );
}
// Fin Pagina1