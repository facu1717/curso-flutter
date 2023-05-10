import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    setState(() {
      counter++;
    });
  }
  void decrease() {
    setState(() {
      counter--;
    });
  }
  void reset() {
    setState(() {
      counter = 0;
    });
  }

  // el build construye tu widget en el contexto, es decir en el arbol
  @override
  Widget build(BuildContext context) {
    const fontSize25 = TextStyle(fontSize: 25);
    //const gapWidth20 = SizedBox(width: 20); // una opcion para separar los botones

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('CounterScreen'),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('Número de clicks', style: fontSize25),
            Text('$counter',style: fontSize25),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // ignore: unnecessary_this
      floatingActionButton:CustomFloatingActions(increaseFn: increase, decreaseFn: decrease, resetFn: reset),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    super.key, required this.increaseFn, required this.decreaseFn, required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // segunda opcion para separar los botones
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn()
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero),
            onPressed: () => resetFn()
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFn(),
        ),
      ],
    );
  }
}