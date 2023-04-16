

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
          const Text('Medida analógica',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          Text(
            test['Medida Analógica'].toString(),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 15,
          ),
          
          const Text('Velocidad',
          style:  TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          Text(
            test['Velocidad'].toString(),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 15,
          ),
           const Text('cO2',
           style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          Text(
            '${test['C02']}  PPM',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text('Humedad',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          Text(
            '${test['humedad']}  %',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ), 
          const SizedBox(
            height: 15,
          ),
           const Text('Temperatura',
           style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          Text(
            '${test['temperatura']} °C',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
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


