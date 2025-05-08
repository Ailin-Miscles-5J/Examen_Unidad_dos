import 'package:flutter/material.dart';
import 'package:miscles/pagina_bottom_sheet.dart';
import 'package:miscles/pagina_cupertino_popup_surface.dart';
import 'package:miscles/pagina_elevated_button.dart';
import 'package:miscles/pagina_indexed_stack.dart';
import 'package:miscles/pagina_placeholder.dart';
import 'package:miscles/pagina_uno.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre paginas Routes",
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla_dos': (context) => const BottomSheetExample(),
        '/pantalla_tres': (context) => const CupertinoPopupSurfaceExample(),
        '/pantalla_cuatro': (context) => const ElevatedButtonExample(),
        '/pantalla_cinco': (context) => const IndexedStackExample(),
        '/pantalla_seis': (context) => const PlaceholderExample(),
      },
    );
  }
}
