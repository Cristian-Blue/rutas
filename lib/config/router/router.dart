import 'package:ruta/config/router/router_model.dart';
import 'package:ruta/presentation/screen/screends.dart';

List<RouterModel> routes = [
  RouterModel(
    name: 'Saludo',
    description: 'Esto es un redireccionamiento como modal a saludo',
    route: '/saludo',
    widget: const SaludoScreen(),
  ),
  RouterModel(
    name: 'Despido',
    description: 'Esto es un redireccionamiento como modal a despido',
    route: '/despido',
    widget: const DespidoScreen(),
  ),
];
