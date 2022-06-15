import 'package:animated/galary_screen.dart';
import 'package:flutter/material.dart';

class SimpleSection extends StatefulWidget {
  final List<String>? imageUrls;

  const SimpleSection({
    Key? key,
    required this.imageUrls,
  }) : super(key: key);

  @override
  State<SimpleSection> createState() => _SimpleSectionState();
}

class _SimpleSectionState extends State<SimpleSection> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  child: const Text('Show Gallery'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GalleryScreen(widget.imageUrls),
                      ),
                    );
                  },
                ),
              ],
            ),
            Hero(
              tag: 'Donkey',
              child: AnimatedContainer(
                height: 150,
                width: 150,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
                child: Image.network(widget.imageUrls![0]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
