// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imagesList = [
    "assets/hereditary.jpeg",
    "assets/joker.jpg",
    "assets/parasite.jpeg",
    "assets/batman.jpg",
  ];

  int tabSelected = 1;
  int selectedIndex = 0;

  void onItemTapped(int index){
    setState((() {
        selectedIndex = index;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black38,
          bottomNavigationBar: BottomNavigationBar( 
            selectedItemColor: Colors.yellow,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label:"home",
                backgroundColor: Colors.black.withOpacity(0.3),
                ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label:"Buscar",
                 backgroundColor: Colors.black.withOpacity(0.3),
                ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
              label:"Favoritos",
               backgroundColor: Colors.black.withOpacity(0.3),
              
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label:"Perfil",
                 backgroundColor: Colors.black.withOpacity(0.3),
                ),
            ],
            currentIndex: selectedIndex,
            onTap: onItemTapped,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Header(),
              title(),
              Tabs(),
              MoviesCarousel(),
            ],
          ),
         
        ));
  }

  CarouselSlider MoviesCarousel() {
    return CarouselSlider(
        items: imagesList
            .map((item) => Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Image.asset(
                      item,
                      width: 400,
                      fit: BoxFit.contain,
                    ),
                  ),
                ))
            .toList(),
        options: CarouselOptions(
            autoPlay: false, aspectRatio: 1.0, enlargeCenterPage: true));
  }

  Padding Tabs() {
    return Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 14),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    tabSelected = 1;
                  });
                },
                child: Text("Popular",
                    style: TextStyle(
                        color: tabSelected == 1
                            ? Colors.yellowAccent
                            : Colors.white,
                        fontFamily: 'Monstserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 17)),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    tabSelected = 2;
                  });
                },
                child: Text("Nuevo",
                    style: TextStyle(
                        color: tabSelected == 2
                            ? Colors.yellowAccent
                            : Colors.white,
                        fontFamily: 'Monstserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 17)),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    tabSelected = 3;
                  });
                },
                child: Text("Premier",
                    style: TextStyle(
                        color: tabSelected == 3
                            ? Colors.yellowAccent
                            : Colors.white,
                        fontFamily: 'Monstserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 17)),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    tabSelected = 4;
                  });
                },
                child: Text("Random",
                    style: TextStyle(
                        color: tabSelected == 4
                            ? Colors.yellowAccent
                            : Colors.white,
                        fontFamily: 'Monstserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 17)),
              )
            ]));
  }

  Padding title() {
    return Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: Text("Peliculas",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 30)));
  }

  Padding Header() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu, size: 25, color: Colors.white)),
            Text(
              "MovieFactory",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Monstserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage('assets/foto_perfil.jpeg'),
                ))
          ],
        ));
  }
}
