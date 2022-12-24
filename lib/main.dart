import 'package:flutter/material.dart';
import 'package:metaballs/metaballs.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Metaballs(
            color: const Color.fromARGB(255, 255, 153, 0),
            effect: MetaballsEffect.follow(
              growthFactor: 1,
              smoothing: 1,
              radius: 0.5,
            ),
            gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 255, 60, 120),
                  const Color.fromARGB(255, 237, 120, 255),
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft
            ),
            metaballs: 50,
            animationDuration: const Duration(milliseconds: 200),
            speedMultiplier: 1,
            bounceStiffness: 3,
            minBallRadius: 15,
            maxBallRadius: 40,
            glowRadius: 0.7,
            glowIntensity: 0.6,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: 100),
                child: Text('hello world',
                  style: GoogleFonts.bebasNeue(
                    color: Colors.white,
                    fontSize: 120,
                    fontWeight: FontWeight.bold,
                  ),),
              )
            )
        ),
      ),
    );
  }
}
