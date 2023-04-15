import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static String id = 'profile';
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override 
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding:  EdgeInsets.only(left: 20.0, right: 20.0, top: 35.0),
            child: Row(
              children: [
                 Icon(
                  Icons.person,
                  size: 70.0,
                ),
                 SizedBox(
                  width: 30.0,
                ),
                Text("Air Quality",
                style: TextStyle(fontSize: 24.0),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.914),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Ajustes'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    onTap: () {},
                  ),

                  const SizedBox(height: 20),

                  ListTile(
                    leading: const Icon(Icons.headset_mic),
                    title: const Text('Soporte'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    onTap: () {},
                  ),
                  
                  const SizedBox(height: 20),
                  
                  ListTile(
                    leading: const Icon(Icons.receipt),
                    title: const Text('Privacidad'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    onTap: () {},
                  ),

                  const SizedBox(height: 20),

                  ListTile(
                    leading: const Icon(Icons.info_outline),
                    title: const Text('Info'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    onTap: () {},
                  ),

                  const SizedBox(height: 20),

                  ListTile(
                    leading: const Icon(Icons.share),
                    title: const Text('Compartir'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    onTap: () {},
                  ),

                  const SizedBox(height: 20),

                  //  ListTile(
                  //  leading: const Icon(Icons.output),
                  //  title: const Text('Salir'),
                  //  textColor: Colors.white,
                  //  iconColor: Colors.white,
                  // ),
                  
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}