import 'package:flutter/material.dart';
import 'package:ruta/config/router/router_model.dart';

class ListaMenuWidget extends StatelessWidget {
  final RouterModel route;
  final bool drawerBool;
  const ListaMenuWidget({
    super.key,
    required this.route,
    this.drawerBool = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(route.name),
      subtitle: Text(route.description),
      onTap: () {
        if (drawerBool) {
          Navigator.pop(context);
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return route.widget;
            },
          ),
        );
      },
    );
  }
}
