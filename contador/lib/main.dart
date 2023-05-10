

import 'package:flutter/material.dart';

//import 'package:first_flutter_app_2/screens/home_screen.dart';
import 'package:first_flutter_app_2/screens/counter_screen.dart';


void main() {
  //"runApp" es el widget que corre tu app
   runApp(const MyApp());
}

// todos los Widget son clases, pero para que se considere Widget tiene que extenderse
// de un StatelessWidget o StatefulWidget
class MyApp extends StatelessWidget {

  // key se utiliza para identificar de manera única un widget en el árbol de widgets.
  // Al heredar el parámetro key de StatelessWidget, MyApp también tendrá la
  // capacidad de utilizar un objeto Key para identificarse de manera única
  // en el árbol de widgets.
  // En este caso como no recibe una key explicita, key = null, porque es el valor
  // que hereda de StatelessWidget
  const MyApp({super.key});


  // Hereda el metodo "build" de StatelessWidget, y el mismo debe
  // retornar un Widget (puede ser cualquiera)
  @override
  Widget build(BuildContext context) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterScreen(),
      );
  }

}