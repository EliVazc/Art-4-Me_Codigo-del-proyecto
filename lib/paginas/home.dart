import 'package:Art_4_Me/paginas/carru.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:Art_4_Me/rutas/routes.dart';
import 'package:Art_4_Me/paginas/carru.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('EliNari'),
              accountEmail: Text('fer@eli.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/fonts/Avatar.jpg',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1636955860106-9eb89e576026?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              title: (Text('Galería')),
              //subtitle: Text('Android'),
              onTap: () {
                Navigator.pushNamed(context, Routes.galdos);
              },
              leading: Icon(
                Icons.picture_in_picture_alt_outlined,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: (Text('Comisiones')),
              //subtitle: Text('Mascotas'),
              onTap: () {
                Navigator.pushNamed(context, Routes.galeria);
              },
              leading: Icon(
                Icons.photo_album_outlined,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: (Text('Bases')),
              //subtitle: Text('Android'),
              onTap: () {
                Navigator.pushNamed(context, Routes.bases);
              },
              leading: Icon(
                Icons.picture_in_picture_alt_outlined,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: (Text('Perfil')),
              //subtitle: Text('Android'),
              onTap: () {
                Navigator.pushNamed(context, Routes.user);
              },
              leading: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: (Text('Cerrar sesión')),
              //subtitle: Text('Android'),
              onTap: () {
                Navigator.pushNamed(context, Routes.inic);
              },
              leading: Icon(
                Icons.exit_to_app_outlined,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Art 4 Me'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail_rounded), label: 'Mensajes'),
        ],
      ),
      // body: Center(child: Text('¡Bienvenido a mi galería!')),
      body: (cuerpo()),
    );
  } // Fin Build

  Widget cuerpo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1598620617148-c9e8ddee6711?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [bienvenida(), descrip(), buscar(), botonBuscar()]),
      ),
    );
  } //Fin cuerpo

  Widget bienvenida() {
    return Text('¡Bienvenido a Art 4 Me!',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'CaveatBrush',
          color: Color.fromARGB(255, 116, 51, 128),
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ));
  }

  Widget descrip() {
    Padding(padding: EdgeInsets.symmetric(vertical: 60));
    return Text('El lugar donde puedes explorar el arte',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'CaveatBrush',
          color: Color.fromARGB(255, 116, 51, 128),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ));
  }

  Widget buscar() {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 100),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Busca creaciones o usuarios',
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  } //fin de usuario

  Widget botonBuscar() {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Buscar"),
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.purple,
      ),
    );
  }
} //