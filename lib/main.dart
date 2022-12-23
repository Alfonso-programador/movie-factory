// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main(){
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabSelected = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12, 
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Header(),
            title(),
            Tabs()
          ],
        ),
        ),
    );
  }

  Padding Tabs() {
    return Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      tabSelected = 1;
                    });
                  },
                  child: Text(
                    "Popular",
                    style: TextStyle(
                      color: tabSelected == 1 ? Colors.yellowAccent : Colors.white ,
                      fontFamily: 'Monstserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 17
                    ),
                  ),
                ),
                TextButton(
                    onPressed: (){
                      setState(() {
                        tabSelected = 2;
                      });
                    },
                    child: Text(
                    "Nuevo",
                    style: TextStyle(
                      color: tabSelected == 2 ? Colors.yellowAccent : Colors.white ,
                      fontFamily: 'Monstserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 17
                    ),
                                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      setState(() {
                        tabSelected = 3;
                      });
                    },
                    child: Text(
                    "Premier",
                    style: TextStyle(
                      color: tabSelected == 3 ? Colors.yellowAccent : Colors.white ,
                      fontFamily: 'Monstserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 17
                    ),
                                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      setState(() {
                        tabSelected = 4;
                      });
                    },
                    child: Text(
                    "Random",
                    style: TextStyle(
                      color: tabSelected == 4 ? Colors.yellowAccent : Colors.white ,
                      fontFamily: 'Monstserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 17
                    ),
                                    ),
                  )

              ],
            ),
          );
  }

  Padding title() {
    return Padding(
             padding: const EdgeInsets.only(left:15.0),
             child: Text("Peliculas",style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Monstserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                  ),),
           );
  }

  Padding Header() {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.menu,size: 25,color: Colors.white,)),
                Text("MovieFactory",style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Monstserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                  ),),
               SizedBox(
                height: 50,
                width: 50,
                 child: CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage('assets/foto_perfil.jpeg'),
           ),
               )
            ]),
          );
  }
}