import 'package:flutter/material.dart';

class ElevatedButtonExample extends StatefulWidget {
  const ElevatedButtonExample({Key? key}) : super(key: key);

  @override
  State<ElevatedButtonExample> createState() => _ElevatedButtonExampleState();
}

class _ElevatedButtonExampleState extends State<ElevatedButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elevated Button Examples'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const ElevatedButton(
                onPressed: null,
                child: Text('Disabled Button'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Action when button is pressed
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Enabled Button Pressed')),
                  );
                },
                child: const Text('Enabled Button'),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Action when icon button is pressed
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Icon Button Pressed')),
                  );
                },
                icon: const Icon(Icons.message),
                label: const Text('Button with Icon'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
