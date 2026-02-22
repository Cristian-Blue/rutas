import 'package:flutter/material.dart';
import 'package:ruta/presentation/screen/despido/despido_screen.dart';
import 'package:ruta/presentation/screen/saludo/saludo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text('Saludo'),
            subtitle: Text('Esto es un redireccionamiento como modal a saludo'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SaludoScreen()),
            ),
          ),
          ListTile(
            title: Text('Despido'),
            subtitle: Text(
              'Esto es un redireccionamiento como modal a despido',
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DespidoScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
