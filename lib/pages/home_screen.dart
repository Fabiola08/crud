// ignore_for_file: unused_import

import 'package:crud/pages/info_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluttertoast/fluttertoast_web.dart';
//import 'package:animate_do/animate_do.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
    body: Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: size.height * .2,
              width: size.width,
              child: SafeArea(
                child: Center(
                  child: Text(
                    'Holaaaaaa, que gusto tenerte en la aplicación! ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              decoration: const BoxDecoration(color: Colors.green),
            ),
            Positioned(
              bottom: -20,
              child: Container(
                height: 70,
                width: size.width * .9,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  width: 2, color: Colors.green)),
                          child: Icon(
                            Icons.air,
                            color: Colors.green,
                          ),
                        ),
                        
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Air Quality",
                              style: TextStyle(fontSize: 11.0),
                            ),
                            Text("Vista nuestra pagina web",
                            style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  width: 2, color: Colors.green)),
                          child: Icon(
                            Icons.air_sharp,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "¡Contáctanos!",
                              style: TextStyle(fontSize: 11.0),
                            ),
                            Text("El cambio inicia contigo",
                            style: TextStyle(fontSize: 10.0),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: (size.height * .5) + 50,
          child: ListView(
            padding: EdgeInsets.all(10),
            scrollDirection: Axis.vertical,
            children: [
              Card(
                elevation: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.question_mark,
                        size: 45,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      "¿Qué es Air Quality?",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,
                        letterSpacing: 3,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Es un dispositivo creado con diferentes sensores y conectado a red por donde se monitorea la calidad de aire y notifica sus valores de este, el dispositivo nos dará un control efectivo de la contaminación para así poder reducir los efectos contraproducentes en nuestra salud.",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
             
              Card(
                elevation: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.functions_outlined,
                        size: 45,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      "Funcionamiento específico",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,
                        letterSpacing: 3,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Esta aplicación tiene como objetivo mantener un registro de los datos capturados por el dispositivo, de esta manera notificar si existe algún cambio en el aire.",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
               Card(
                elevation: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.functions_outlined,
                        size: 45,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      "Instituciones",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,
                        letterSpacing: 3,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "La comunidad Sembrando vida con la Universidad Tecnologica De Tlaxcala hara uso de esta aplicacion junto con los creadores de la misma para poder identificar las areas que necesitan arboles para iniciar una purificacion.",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.contact_mail,
                        size: 45,
                        color: Colors.green
                      ),
                    ),
                    Text(
                      "Contacto",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,
                        letterSpacing: 3,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "airquality@gmail.com",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
    );
  }
}