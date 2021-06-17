import 'dart:ui';

import 'package:shopping_cart_project/helpers/unitnums.dart';
import 'package:shopping_cart_project/models/category.dart';
import 'package:shopping_cart_project/models/categorypart.dart';

class SubCategory extends Category {

  List<CategoryPart> parts;
  double price;
  WeightUnits unit;

  SubCategory({
    this.parts = const [],
    this.price = 0.0,
    this.unit = WeightUnits.Kg,
    String name,
    String icon,
    Color color,
    String imgName 
  }): super(
    name: name,
    icon: icon,
    color: color,
    imgName: imgName
  );
}