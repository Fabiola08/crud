import 'package:crud/pages/home_screen.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de la calidad del aire'),
        backgroundColor: Colors.green,
      ),
       body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Text('¿Qué es la calidad del aire? ',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18),
                textAlign: TextAlign.center),
              
              SizedBox(height: 8.0),

              Text('Se define la inmisión o calidad del aire como la concentración de contaminante que llega a un receptor, más o menos lejano de la fuente de emisión, una vez transportado y difundido por la atmósfera.La capacidad de la atmósfera para diluir las concentraciones de contaminantes es fundamental para preservar una buena calidad del aire, y esto va a venir marcado principalmente por las condiciones meteorológicas. Así, en una atmósfera estable, se propiciará la acumulación de contaminantes y se facilitará la formación de contaminantes secundarios, mientras que en una atmósfera inestable, la difusión de los contaminantes será más eficaz debido a las turbulencias.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16),
                textAlign: TextAlign.start),
              
              SizedBox(height: 10.0),
              Text('¿Qué es CO2?',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18),
                textAlign: TextAlign.center),
              
                SizedBox(height: 8.0),

                Text("Se hace referencia a un gas incoloro y soluble en agua, cuyas moléculas se componen por un átomo de carbono y dos de oxígeno, unidos por enlaces dobles covalentes. La importancia biológica del CO2 radica principalmente en que las plantas lo necesitan para llevar a cabo la fotosíntesis, así como cierto tipo de cyanobacterias para sus procesos de obtención de energía.",
                style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16),
                textAlign: TextAlign.start),

                SizedBox(height: 15.0),

                Text('¿Qué es la Temperatura?',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18),
                textAlign: TextAlign.center),
              
                SizedBox(height: 8.0),

                Text("La temperatura es una magnitud escalar que se define como la cantidad de energía cinética de las partículas de una masa gaseosa, líquida o sólida. Cuanto mayor es la velocidad de las partículas, mayor es la temperatura y viceversa.",
                style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16),
                textAlign: TextAlign.start),

                SizedBox(height: 15.0),

                Text('¿Qué es Humedad?',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18),
                textAlign: TextAlign.center),
              
                SizedBox(height: 8.0),

                Text("La humedad es la cantidad de vapor de agua que contiene el aire. Siempre hay vapor de agua en el aire y la cantidad varía según diversos factores, por ejemplo, si recién llovió, si se está cerca del mar, si hay o no vegetación en el terreno, la temperatura del aire, entre otros.",
                style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16),
                textAlign: TextAlign.start),

                SizedBox(height: 12.0),

                Text('¿Qué es el Amoníaco?',
                style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18),
                textAlign: TextAlign.center),
              
                SizedBox(height: 8.0),

                Text("Es un gas incoloro y está compuesto por una parte de nitrógeno (N) y tres partes de hidrógeno (H3). Es producido por la naturaleza en el proceso de descomposición de materia orgánica (plantas, animales, bacterias, desechos de animales) y se puede encontrar en el aire, el suelo y el agua; también es una fuente primordial de nitrógeno para las plantas y los animales. Adicionalmente, es posible encontrarlo en su forma iónica (iones de amoniaco o NH4+) cuando se disuelve con el agua en pozos, ríos, lagos y suelos húmedos.",
                style: TextStyle(
                fontWeight: FontWeight.w400,
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