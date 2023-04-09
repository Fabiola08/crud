import 'package:crud/pages/home_screen.dart';
import 'package:crud/pages/info.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  final String pathImage = 'assets/img/green.png';
  final String info = '';
  final String comments ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guia de contaminación'),
        backgroundColor: Colors.green,
      ),
      body: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Info(
          pathImage: 'assets/img/green.png', 
          info: 'Bueno', 
          comments: 'La calidad del aire es buena',
        ),
        Info(
          pathImage: 'assets/img/yellow.jpg', 
          info: 'Medio', 
          comments: 'La calidad del aire es media',
        ),
        Info(
          pathImage: 'assets/img/anaranjado.png', 
          info: 'Precaución', 
          comments: 'No es recomendable el ambiente',
        ),
        Info(
          pathImage: 'assets/img/red.png', 
          info: 'Malo', 
          comments: 'La zona esta muy contaminada',
        ),
      ],
      )
    );
  }
}