import 'package:flutter/material.dart';
import 'package:ruta/config/router/router.dart';
import 'package:ruta/presentation/widget/drawer/drawer_widget.dart';
import 'package:ruta/presentation/widget/lista/lista_menu_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ruta'), centerTitle: true),
      drawer: DrawerWidget(),
      body: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (context, index) => ListaMenuWidget(route: routes[index]),
      ),
    );
  }
}
