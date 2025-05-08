import 'package:flutter/material.dart';

class PlaceholderExample extends StatelessWidget {
  const PlaceholderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de Placeholder'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Widget Placeholder',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Este widget se usa como marcador de posición durante el desarrollo',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Placeholder(
                fallbackHeight: 200,
                fallbackWidth: double.infinity,
                color: Colors.orangeAccent,
                strokeWidth: 2,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Text(
                      'Variante 1',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Placeholder(
                      fallbackHeight: 80,
                      fallbackWidth: 80,
                      color: Colors.purpleAccent,
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      'Variante 2',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Placeholder(
                      fallbackHeight: 80,
                      fallbackWidth: 80,
                      color: Colors.greenAccent,
                      strokeWidth: 3,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
