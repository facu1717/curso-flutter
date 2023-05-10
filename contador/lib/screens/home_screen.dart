import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // el build construye tu widget en el contexto, es decir en el arbol
  // de widgets. Aunque el buildContext es mas que eso (se vera mas adelante)
  // En pocas palabras, el buildContext te permite saber el contexto en el
  // cual se esta construyendo tu widget
  @override
  Widget build(BuildContext context) {
    const fontSize25 = TextStyle(fontSize: 25);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('AppBar'),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Numero de clicks', style: fontSize25),
            Text('0',style: fontSize25),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('HolaMundo');
        },
      ),
    );
  }

}