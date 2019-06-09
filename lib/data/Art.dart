import 'package:flutter/foundation.dart';

class Art {
  final String name;
  final String description;
  final List<Cantrip> cantrips;

  Art({
    @required this.name,
    @required this.description,
    @required this.cantrips
  });
}

class Cantrip {
  final int level;
  final String description;
  final String name;
  final String effect;

  Cantrip({
    @required this.level,
    @required this.description,
    @required this.name,
    @required this.effect,
  });
}
