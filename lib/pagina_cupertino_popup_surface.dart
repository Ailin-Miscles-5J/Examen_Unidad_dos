import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPopupSurfaceExample extends StatelessWidget {
  const CupertinoPopupSurfaceExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Popup Surface'),
        backgroundColor:
            Colors.blue, // Puedes usar CupertinoColors si prefieres
      ),
      body: Center(
        child: CupertinoButton.filled(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          borderRadius: BorderRadius.circular(8),
          child: const Text("Mostrar Popup Cupertino"),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext builder) {
                return CupertinoPopupSurface(
                  isSurfacePainted: true,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Contenido del Popup',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 30),
                        CupertinoButton(
                          color: CupertinoColors.destructiveRed,
                          child: const Text('Cerrar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
