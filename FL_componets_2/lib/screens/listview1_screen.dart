import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Messi', 'Julian Alvarez', 'Enzo Fernandez', 'Dibu'];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Listview Tipo 1'),
        ),
      ),
      body: ListView(
        children: [
          ...options.map((option) =>
              ListTile(
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                title: Text(option),
              )
          ).toList()
        ],
      )
    );
  }
}
