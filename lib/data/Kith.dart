import 'dart:math';
import './Category.dart';
class LightKith {
  final String name;
  final Category category;
  final String icon;
  final String image;
  final String description;
  final Point position;
  LightKith(this.name, this.category, this.icon, this.image, this.description, {this.position: const Point(0.0, 0.0)});
}
class Kith extends LightKith {
  final String childing;
  final String wilder;
  final String grump;
  Kith(
      String name,
      Category category,
      String icon,
      String image,
      String description,
      this.childing,
      this.wilder,
      this.grump,
      {Point position}) : super(name, category, icon, image, description, position: position);
}