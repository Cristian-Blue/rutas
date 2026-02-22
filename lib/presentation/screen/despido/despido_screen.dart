import 'package:flutter/material.dart';

final List<Widget> _screens = [
  Text('Contenido del primer tab'),
  Text('Contenido del segundo tab'),
];

class DespidoScreen extends StatefulWidget {
  const DespidoScreen({super.key});

  @override
  State<DespidoScreen> createState() => _DespidoScreenState();
}

class _DespidoScreenState extends State<DespidoScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      appBar: AppBar(title: Text('Despido'), centerTitle: true),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }
}
