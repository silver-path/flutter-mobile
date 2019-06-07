import 'dart:math';
class LightKith {
  final String name;
  final String icon;
  final String image;
  final String description;
  final Point position;
  LightKith(this.name, this.icon, this.image, this.description, {this.position: const Point(0.0, 0.0)});
}
class Kith extends LightKith {
  final String childing;
  final String wilder;
  final String grump;
  Kith(
      String name,
      String icon,
      String image,
      String description,
      this.childing,
      this.wilder,
      this.grump,
      {Point position}) : super(name, icon, image, description, position: position);
}