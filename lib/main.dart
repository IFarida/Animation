import 'package:animated/seactions/simple_section.dart';
import 'package:animated/tricker_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Rabbit\'s guests Animations'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                const TrickerWidget(),
                const DropDownWidget(),
                SimpleSection(imageUrls: characterImages['eeyore']),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidget();
}

class _DropDownWidget extends State<DropDownWidget> {
  String dropdownValue = "Donkey";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_circle_down_sharp),
      elevation: 15,
      style: const TextStyle(color: Colors.grey),
      underline: Container(
        height: 2,
        color: Colors.grey,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Donkey', 'Type: Lazy donkey', 'Color: Grey or Brown']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

Map<String, List<String>> characterImages = {
  'eeyore': [
    'https://static.wikia.nocookie.net/vinni-puh-fanon/images/8/80/1595725675_7-p-fon-papirus-7.jpg/revision/latest?cb=20210806065917&path-prefix=ru',
    'https://i.pinimg.com/originals/66/08/94/6608944b6c8cd0ba75adce48d365fe34.jpg',
    'https://static.wikia.nocookie.net/disney/images/1/1c/Profile_-_Eeyore.png/revision/latest?cb=20210516060155',
  ],
};
