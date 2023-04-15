import 'package:crud/pages/home_screen.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elementos a medir'),
        backgroundColor: Colors.green,
      ),
       body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Text('¿Qué es CO2?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18),
                textAlign: TextAlign.center),
              
                SizedBox(height: 8.0),

                Text("Se hace referencia a un gas incoloro y soluble en agua, cuyas moléculas se componen por un átomo de carbono y dos de oxígeno, unidos por enlaces dobles covalentes. La importancia biológica del CO2 radica principalmente en que las plantas lo necesitan para llevar a cabo la fotosíntesis, así como cierto tipo de cyanobacterias para sus procesos de obtención de energía.",
                style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16),
                textAlign: TextAlign.start),

                SizedBox(height: 15.0),

                Text('¿Qué es la Temperatura?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18),
                textAlign: TextAlign.center),
              
                SizedBox(height: 8.0),

                Text("La temperatura es una magnitud escalar que se define como la cantidad de energía cinética de las partículas de una masa gaseosa, líquida o sólida. Cuanto mayor es la velocidad de las partículas, mayor es la temperatura y viceversa.",
                style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16),
                textAlign: TextAlign.start),

                SizedBox(height: 15.0),

                Text('¿Qué es Humedad?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18),
                textAlign: TextAlign.center),
              
                SizedBox(height: 8.0),

                Text("La humedad es la cantidad de vapor de agua que contiene el aire. Siempre hay vapor de agua en el aire y la cantidad varía según diversos factores, por ejemplo, si recién llovió, si se está cerca del mar, si hay o no vegetación en el terreno, la temperatura del aire, entre otros.",
                style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16),
                textAlign: TextAlign.start),

                SizedBox(height: 12.0),

              //   Text('CO2',
              // style: TextStyle(
              //   fontWeight: FontWeight.w500,
              //   fontSize: 18),
              //   textAlign: TextAlign.center),
              
              //   SizedBox(height: 8.0),

              //   Text("Se hace referencia a un gas incoloro y soluble en agua, cuyas moléculas se componen por un átomo de carbono y dos de oxígeno, unidos por enlaces dobles covalentes. La importancia biológica del CO2 radica principalmente en que las plantas lo necesitan para llevar a cabo la fotosíntesis, así como cierto tipo de cyanobacterias para sus procesos de obtención de energía.",
              //   style: TextStyle(
              //   fontWeight: FontWeight.w500,
              //   fontSize: 16),
              //   textAlign: TextAlign.center),

              //   SizedBox(height: 12.0),

              //   Text('CO2',
              // style: TextStyle(
              //   fontWeight: FontWeight.w500,
              //   fontSize: 18),
              //   textAlign: TextAlign.center),
              
              //   SizedBox(height: 8.0),

              //   Text("Se hace referencia a un gas incoloro y soluble en agua, cuyas moléculas se componen por un átomo de carbono y dos de oxígeno, unidos por enlaces dobles covalentes. La importancia biológica del CO2 radica principalmente en que las plantas lo necesitan para llevar a cabo la fotosíntesis, así como cierto tipo de cyanobacterias para sus procesos de obtención de energía.",
              //   style: TextStyle(
              //   fontWeight: FontWeight.w500,
              //   fontSize: 16),
              //   textAlign: TextAlign.center),

              //   SizedBox(height: 12.0),

            ],
          ),
        ),
       )
 
      //const Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // children: [
      //   Padding(
      //       padding: EdgeInsets.all(15),
      //       child: Column(
      //         children: [
      //           Text('CO2',
      //           style: TextStyle(
      //         fontWeight: FontWeight.w500, fontSize: 18),
      //         textAlign: TextAlign.center,),
      //         SizedBox(height: 8.0,),
      //       Text("Se hace referencia a un gas incoloro y soluble en agua, cuyas moléculas se componen por un átomo de carbono y dos de oxígeno, unidos por enlaces dobles covalentes. La importancia biológica del CO2 radica principalmente en que las plantas lo necesitan para llevar a cabo la fotosíntesis, así como cierto tipo de cyanobacterias para sus procesos de obtención de energía.",
      //       style: TextStyle(
      //         fontWeight: FontWeight.w400, fontSize: 16),
      //         textAlign: TextAlign.center,
      //         ),
      //         ],
      //     ),
      //   )
      // ],
      // )
    );
  }
}