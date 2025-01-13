import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateTab extends StatelessWidget {
  DateTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: const Image(
              image: AssetImage('assets/images/Logo.png'),
              height: 150,
              width: 150,
             // fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          const SizedBox(height: 30,width: 30,),
          const Image(
            image: AssetImage('assets/images/date.png'),
            fit: BoxFit.cover,
            width: 350,
            height: 350,
          ),
          const SizedBox(width: 30,height: 30,),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Theme.of(context).primaryColor),
                      ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: const Image(
                          image: AssetImage('assets/images/eveningAzkar.png'),
                          fit: BoxFit.cover,
                          width: 150,
                          height: 150,
                        ),
                      ),
                      const Text(
                        'Evening Azkar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Theme.of(context).primaryColor),
                      ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: const Image(
                          image: AssetImage('assets/images/morningAzkar.png'),
                          fit: BoxFit.cover,
                          width: 150,
                          height: 150,
                        ),
                      ),
                      const Text(
                        'Morning Azkar',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
