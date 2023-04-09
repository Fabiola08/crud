// import 'package:flutter/material.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
  
//   @override
//   Widget build(BuildContext context) {final sessionController = watch(sessionProvider);
//   final user = sessionController.user!;
//   final displayName = user.displayName??'';
//   final letter = displayName.isNotEmpty ? displayName[0] : "";

//     return ListView(
//       children: [
//         CircleAvatar(
//           radius: 75.0,
//           child: user.photoURL == null,
//           ? Text(
//             letter,
//             style: const TextStyle(fontSize: 65.0),
//           ),
          
//         )
//       ],
//     );
//   }
// }