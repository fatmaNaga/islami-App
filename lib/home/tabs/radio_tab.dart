import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  int selectedIndex = 0;
  bool isRadioSelected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Image(
              image: AssetImage('assets/images/Logo.png'),
              height: 150,
              width: 150,
              alignment: Alignment.topCenter,
            ),
            const SizedBox(
              height: 20,
            ),
            ToggleSwitch(
              minWidth: 290.0,
              initialLabelIndex: 1,
              cornerRadius: 20.0,
              activeFgColor: Colors.white,
              inactiveBgColor: Theme.of(context).primaryColor,
              inactiveFgColor: Colors.white,
              totalSwitches: 2,
              labels: const ['Radio', 'Reciters'],
              // icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
              activeBgColors: [
                const [Colors.blue],
                [Colors.black.withOpacity(0.7)]
              ],
              onToggle: (index) {
                setState(() {
                  selectedIndex = index!;
                  isRadioSelected = index == 0;
                });
                print('switched to: $index');
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount:
                    isRadioSelected ? radioStations.length : reciters.length,
                itemBuilder: (context, index) {
                  final item =
                      isRadioSelected ? radioStations[index] : reciters[index];
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Stack(
                      children: [
                        // Background Container
                        Container(
                          height: 80,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.only(left: 5,right: 5),
                          margin: const EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                item,
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.play_arrow,
                                        color: Colors.black),
                                    onPressed: () {Image.asset('assets/images/soundWave 1.png');setState(() {

                                    });},
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.volume_up,
                                        color: Colors.black),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Image on top of the container
                        const Positioned(
                            bottom: 0,
                            left: 2,
                            right: 2,
                            top: 2,
                            //height: double.infinity,
                            // width: double.infinity,

                            child: Image(
                              image: AssetImage('assets/images/Mosque-02.png'),
                            )),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> radioStations = [
  'Radio Ibrahim Al-Akdar',
  'Radio Al-Qaria Yassen',
  'Radio Ahmed Al-Trabulsi',
  'Radio Addokali Mohammad Alalim',
];
List<String> reciters = [
  'Ibrahim Al-Akdar',
  'Akram Alalaqmi',
  'Majed Al-Enezi',
  'Malik Shaibat Alhamed',
];
