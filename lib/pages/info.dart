import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Info extends StatelessWidget {
  final String pathImage;
  final String info;
  final String comments;

  const Info({super.key, required this.pathImage, required this.info, required this.comments});

  @override
  Widget build(BuildContext context) {
    final pic = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );
    final infoC = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        info,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(fontSize: 17.0),
      ),
    );
    final details = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comments,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(
          fontSize: 14.0,
          color: Colors.black54
        ),
      ),
    );
    final inf = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        infoC,
        details,
      ],
    );
    
    return Row(
      children: [
        pic,
        inf,
      ],
    );
  }
}