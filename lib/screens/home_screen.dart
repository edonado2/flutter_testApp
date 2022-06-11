import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //*AppBar
        appBar: AppBar(
          title: const Text("Hola mundo"),
          elevation: 0,
        ),
         //* Cambiar pagina

         body: PageView(
          children: const [
            CustomScreen(color: Colors.blue),
            CustomScreen(color: Colors.black),

          ],
         ),

        //*Tabs
        
        // ignore: prefer_const_literals_to_create_immutables
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          items: const [
          BottomNavigationBarItem(
            icon: Icon( Icons.verified_user_outlined),
            label: 'User',
            ),
            BottomNavigationBarItem(
            icon: Icon( Icons.search_off_outlined),
            label: 'Search',
            )
        ]),
      );
  }
}

// ignore: use_key_in_widget_constructors
class CustomScreen extends StatelessWidget {

  final Color color;
  // ignore: use_key_in_widget_constructors
  const CustomScreen ({ required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: const Center(
      child: Text('Custom Screen'),
    ),
    
    ); 
  }
}