// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  final List<String>? imageUrls;

  const GalleryScreen(this.imageUrls, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rabbit\'s guests Animations'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Card(
                child: SizedBox(
                  height: 150,
                  child: Hero(
                    tag: 'Donkey',
                    child: FadeInImage(
                      placeholder: AssetImage(
                        'images/plaseholder.jpeg',
                      ),
                      image: NetworkImage(imageUrls![0]),
                    ),
                  ),
                ),
              ),
              Card(
                child: SizedBox(
                  height: 150,
                  child: FadeInImage(
                    placeholder: AssetImage('images/plaseholder.jpeg'),
                    image: NetworkImage(imageUrls![1]),
                  ),
                ),
              ),
              Card(
                child: SizedBox(
                  height: 150,
                  child: FadeInImage(
                    placeholder: AssetImage('images/plaseholder.jpeg'),
                    image: NetworkImage(imageUrls![2]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
