import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import './court.dart';
import './background.dart';

part 'kith.g.dart';

class Displayable {
  Background display(Court court) => null;
}

abstract class Kith implements Displayable {
  final String name;
  final String icon;
  final String kith;
  final String description;
  final String decoration;
  final Court court;
  final List<String> affinities;

  Kith({
    @required this.name,
    @required this.icon,
    @required this.kith,
    @required this.description,
    @required this.decoration,
    @required this.court,
    @required this.affinities,
  });
}

@JsonSerializable()
class Kithain extends Kith {
  final Map<String, Background> backgrounds;

  Kithain({
    @required name,
    @required icon,
    @required decoration,
    @required court,
    @required description,
    @required affinities,
    @required this.backgrounds,
  })  : assert(backgrounds.containsKey('seelie')),
        assert(backgrounds.containsKey('unseelie')),
        super(
          name: name,
          icon: icon,
          kith: 'kithain',
          description: description,
          decoration: decoration,
          court: court,
          affinities: affinities,
        );

  factory Kithain.fromJson(Map<String, dynamic> json) =>
      _$KithainFromJson(json);

  Map<String, dynamic> toJson() => _$KithainToJson(this);

  @override
  Background display(Court court) =>
      court == Court.seelie ? backgrounds['seelie'] : backgrounds['unseelie'];
}

@JsonSerializable()
class Thallain extends Kith {
  final Background background;

  Thallain({
    @required name,
    @required icon,
    @required decoration,
    @required description,
    @required affinities,
    @required this.background,
    court: Court.shadow,
  }) : super(
          name: name,
          icon: icon,
          kith: 'thallain',
          description: description,
          decoration: decoration,
          court: court,
          affinities: affinities,
        );

  factory Thallain.fromJson(Map<String, dynamic> json) =>
      _$ThallainFromJson(json);

  Map<String, dynamic> toJson() => _$ThallainToJson(this);

  @override
  Background display(Court court) => background;
}
