import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Componentes en Flutter'),
        ),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.access_time_outlined),
              title: const Text('Nombre de fila'),
              onTap: () => {
                Navigator.pushNamed(context, 'listview1')
              },
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 10
      ),
    );
  }
}
