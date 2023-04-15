import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late User _user;

  @override
  void initState() {
    super.initState();
    _getUserData();
  }

  Future<void> _getUserData() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        _user = user;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
                  Icons.person,
                  size: 70.0,
                ),
            SizedBox(height: 16.0),
            Text(
              'Email: ${_user.email}',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'ID: ${_user.uid}',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
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
      ),
    );
  }
}
