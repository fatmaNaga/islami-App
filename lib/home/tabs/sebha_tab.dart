import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  @override
  _SebhaScreenState createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaTab> {
  int counter = 0;
  int phase = 0;

  // List of dhikr phrases
  final List<String> dhikrPhrases = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "لا حول ولا قوة إلا بالله"
  ];

  void incrementCounter() {
    setState(() {
      counter++;
      if (counter == 34) {
        phase = (phase + 1) % dhikrPhrases.length;
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Positioned(
                top: 0,
                child: Image(
                  image: AssetImage('assets/images/Logo.png'),
                  height: 150,
                  width: 150,
                  alignment: Alignment.topCenter,
                 // fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 30,
                width: 30,
              ),
              const Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w700)),
              const SizedBox(width: 70,height: 70,),
              Stack(
                alignment: Alignment.center,
                children: [
                  GestureDetector(
                      onTap: incrementCounter,
                      child: const Image(
                        image: AssetImage('assets/images/SebhaBody 1.png'),
                        height: 250,
                        width: 350,
                        fit: BoxFit.fill,
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dhikrPhrases[phase],
                        style:  const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),

                      ),
                      Text(
                        '$counter',
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),


                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
