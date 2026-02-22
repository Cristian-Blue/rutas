import 'package:flutter/material.dart';

class SaludoScreen extends StatelessWidget {
  const SaludoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Saludo'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Primer Tab'),
              Tab(text: 'Segundo tab'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Contenido del primer tab')),
            Center(child: Text('Contenido del segundo tab')),
          ],
        ),
      ),
    );
  }
}
