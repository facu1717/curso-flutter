import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Messi', 'Julian Alvarez', 'Enzo Fernandez', 'Dibu'];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Listview Tipo 2'),
        ),
      ),
      body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
              title: Text(options[index]),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {              }
            ,
          ),
          separatorBuilder: (_, __) => const Divider(),
      )
    );
  }
}
