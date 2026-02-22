import 'package:flutter/widgets.dart';

class RouterModel {
  String name;
  String description;
  String route;
  Widget widget;

  RouterModel({
    required this.name,
    required this.description,
    required this.route,
    required this.widget,
  });
}
