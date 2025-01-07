
import 'package:flutter/widgets.dart';
import 'package:todo_list/app/core/value/icons.dart';


List<Icon> getIcons(){
 return const [
  Icon(IconData(personIcon, fontFamily: 'MaterialIcons')),
  Icon(IconData(workIcon, fontFamily: 'MaterialIcons')),
  Icon(IconData(movieIcon, fontFamily: 'MaterialIcons')),
  Icon(IconData(sportIcon, fontFamily: 'MaterialIcons')),
  Icon(IconData(travelIcon, fontFamily: 'MaterialIcons')),
  Icon(IconData(shopIcon, fontFamily: 'MaterialIcons')),
 ];
}