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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Image(
              image: AssetImage('assets/images/Logo.png'),
              height: 150,
              width: 150,
              alignment: Alignment.topCenter,
            ),
            const SizedBox(
              height: 20,
            ),ToggleSwitch(
              minWidth: 90.0,
              initialLabelIndex: 1,
              cornerRadius: 20.0,
              activeFgColor: Colors.white,
              inactiveBgColor: Theme.of(context).primaryColor,
              inactiveFgColor: Colors.white,
              totalSwitches: 2,
              labels: const ['Radio', 'Receter'],
             // icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
              activeBgColors: [const [Colors.blue],[Colors.black.withOpacity(0.7)]],
              onToggle: (index) {
                setState(() {
                  selectedIndex=index!;
                });
                print('switched to: $index');
      
              },
            ),
      
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                  itemCount:
                  selectedIndex == 0 ? radioStaions.length : reciters.length,
                  itemBuilder: (context, index) {
                    final item =
                    selectedIndex == 0 ? radioStaions[index] : reciters[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(12),),
                        child: ListTile(leading: const Icon(
                          Icons.radio, color: Colors.black,),
                          title: Text(item, style: const TextStyle(color: Colors
                              .black, fontWeight: FontWeight.bold),),
                          trailing: IconButton(onPressed: () {}, icon: const Icon(Icons
                              .play_arrow, color: Colors.black,)),),),);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
final List<String> radioStaions=[
  'Radio Ibrahim Al_Akdar',
  'Radio AL_Qaria Yassen ',
  'Radio Ahmed Al_ trabulsi',
  'Radio Addokali Mohammad Alalim'
];
final List<String> reciters=[
  'Ibrahim Al_Akdar',
  'Akeam Alalaqmi',
  'Majed Al_Enezi',
  'Malik Shaibat Alhemed'
];