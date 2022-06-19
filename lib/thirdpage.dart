import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPage();
}

class _ThirdPage extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('N A I M I N G 2'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: const [
                Card(
                  color: Color.fromARGB(255, 101, 17, 180),
                  child: SizedBox(
                    height: 150,
                    child: Hero(
                      tag: 'Planet',
                      child: FadeInImage(
                        placeholder: AssetImage(
                          'assets/images/background2.jpg',
                        ),
                        image: AssetImage('assets/icons/earth.png'),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 101, 17, 180),
                  child: SizedBox(
                    height: 150,
                    child: FadeInImage(
                      placeholder: AssetImage('assets/images/background2.jpg'),
                      image: AssetImage('assets/images/children.jpg'),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 101, 17, 180),
                  child: SizedBox(
                    height: 150,
                    child: FadeInImage(
                      placeholder: AssetImage('assets/images/background2.jpg'),
                      image: AssetImage('assets/images/children2.jpg'),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 101, 17, 180),
                  child: SizedBox(
                    height: 150,
                    child: FadeInImage(
                      placeholder: AssetImage('assets/images/background2.jpg'),
                      image: AssetImage('assets/images/children3.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
