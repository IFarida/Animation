// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:week17animation/thirdpage.dart';
import 'package:week17animation/dropdown.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPage();
}

class _SecondPage extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('N A I M I N G'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Color.fromARGB(255, 101, 17, 180),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Hero(
                            tag: 'Planet',
                            child: FadeInImage(
                              placeholder:
                                  AssetImage('assets/images/bacground.jpg'),
                              image: AssetImage('assets/icons/earth.png'),
                            ),
                          ),
                        ),
                      ),
                      OutlinedButton(
                        child: Text('Show Gallary'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThirdPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              DropDouwn(),
            ],
          ),
        ),
      ),
    );
  }
}
