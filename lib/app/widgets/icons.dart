import 'package:flutter/material.dart';
import 'package:todo_list/app/core/value/icons.dart';

class IconWithColor {
  final int iconCodePoint;
  final Color color;

  IconWithColor({required this.iconCodePoint, required this.color});
}

List<IconWithColor> getIcons() {
  return [
    IconWithColor(iconCodePoint: personIcon, color: Colors.blue),
    IconWithColor(iconCodePoint: workIcon, color: Colors.red),
    IconWithColor(iconCodePoint: movieIcon, color: Colors.green),
    IconWithColor(iconCodePoint: sportIcon, color: Colors.orange),
    IconWithColor(iconCodePoint: travelIcon, color: Colors.purple),
    IconWithColor(iconCodePoint: shopIcon, color: Colors.yellow),
  ];
}
