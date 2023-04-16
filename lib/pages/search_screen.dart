

import 'package:crud/pages/info_page.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RealtimeDatabase extends StatefulWidget {
    const RealtimeDatabase ({Key? key}) : super(key: key);

  @override
  State<RealtimeDatabase> createState() => _RealtimeDatabaseState();
}

class _RealtimeDatabaseState extends State<RealtimeDatabase> {

 Query dbRef = FirebaseDatabase.instance.ref().child('Test');
 DatabaseReference reference = FirebaseDatabase.instance.ref().child('test');

 Widget listItem({required Map test}) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0, left: 20.0,top: 30.0),
      padding: const EdgeInsets.all(5.0),
      height: 270,
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(20.0)), 
        boxShadow: <BoxShadow>[
          BoxShadow (
            color: Colors.black38,
            blurRadius: 18.0,
            offset: Offset(0.0, 8.0),
          ),
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
             children: [
              Icon(Icons.co2),
              SizedBox(width: 8,),
               const Text('cO2',
               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
               SizedBox(width: 110,),
               Text(
            '${test['C02']}  ppm',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
             ],
           ),
          
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(Icons.gas_meter),
              SizedBox(width: 8,),
              const Text('Gas',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              SizedBox(width: 170,),
              Text(
            '${test['Medida Analógica']} ppm',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
            ],
          ),
          
          const SizedBox(
            height: 20,
          ),
          
          Row(
            children: [
              Icon(Icons.speed),
              SizedBox(width: 8,),
              const Text('Velocidad',
              style:  TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              SizedBox(width: 85,),
              Text(
            '${test['Velocidad']} m/s',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
            ],
          ),
          
          const SizedBox(
            height: 20,
          ),
           
          Row(
            children: [
              Icon(Icons.water_drop),
              SizedBox(width: 8,),
              const Text('Humedad',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              SizedBox(width: 150,),
              Text(
            '${test['Humedad']} %',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ), 
            ],
          ),
          
          const SizedBox(
            height: 20,
          ),
           Row(
             children: [
              Icon(Icons.device_thermostat),
               const Text('Temperatura',
               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
               SizedBox(width: 112,),
               Text(
            '${test['Temperatura']} °C',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
             ],
           ),
          
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: const Icon(Icons.info),
          onPressed: (){
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const InfoPage()),
            );
         },
       ),
      body: Container(
        height: double.infinity,
        child: FirebaseAnimatedList(
          query: dbRef, 
          itemBuilder: (BuildContext context, DataSnapshot snapshot, 
          Animation<double> animation, int index) {
          
          Map test = snapshot.value as Map;
          test['key'] = snapshot.key;

          return listItem(test: test);
        
        },
      ),
      ),
    );
  }
}


