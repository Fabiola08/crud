import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';


class Grafica extends StatefulWidget {
  const Grafica ({super.key});

  @override
  State<Grafica> createState() => _GraficaState();
}

class _GraficaState extends State<Grafica> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
        SfRadialGauge(
          axes: <RadialAxis>[
            RadialAxis(
              minimum: 400,
              maximum: 2200,
              interval: 100,
              ranges: <GaugeRange>[
                GaugeRange(
                  startValue: 400,
                  endValue: 700,
                  color: Colors.green,
                ),
                GaugeRange(
                  startValue: 700,
                  endValue: 1000,
                  color: Colors.lightGreen,
                ),
                GaugeRange(
                  startValue: 1000,
                  endValue: 1500,
                  color: Colors.amber,
                ),
                GaugeRange(
                  startValue: 1500,
                  endValue: 2000,
                  color: Colors.amber.shade800,
                ),
                GaugeRange(
                  startValue: 2000,
                  endValue: 2200,
                  color: Colors.red.shade800,
                ),
              ],
              pointers: <GaugePointer>[
                NeedlePointer(
                  value: 500,
                  enableAnimation: true,
                ),
              ],
            )
          ],
        )
      ],
      ),
    );
  }
}




