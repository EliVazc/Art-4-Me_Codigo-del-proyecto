import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:Art_4_Me/rutas/routes.dart';

class Carrusel extends StatefulWidget {
  const Carrusel({super.key});

  @override
  State<Carrusel> createState() => _CarruselState();
}

class _CarruselState extends State<Carrusel> {
  final NATUimages = [
    'assets/fonts/1.png',
    'assets/fonts/2.png',
    'assets/fonts/3.png',
    'assets/fonts/4.png',
    'assets/fonts/5.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1557682250-33bd709cbe85?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=829&q=80'),
                    fit: BoxFit.cover)),
            height: MediaQuery.of(context).size.height * 1,
            child: Padding(
              padding: EdgeInsets.only(top: 65),
              child: CarouselSlider.builder(
                itemCount: NATUimages.length,
                itemBuilder: ((context, index, realIndex) {
                  final NATUimage = NATUimages[index];
                  return buildImage(NATUimage, index);
                }),
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.90,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 190,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.sesi);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                  ),
                  child: Text(
                    'Comenzar',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  } //Fin build

  Widget buildImage(String NATUimage, int index) => ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 1),
          color: Colors.grey,
          child: Image.asset(
            NATUimage,
            fit: BoxFit.cover,
          )));
}//FIN
