import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:math';

part 'Background.g.dart';

@JsonSerializable()
class Background {
  final String url;
  @JsonKey(fromJson: toPoint, toJson: fromPoint)
  final Point position;

  Background({
    @required this.url,
    this.position: const Point(0.0, 0.0),
  });

  static Point toPoint(Map<String, double> json) => Point(json['x'], json['y']);

  static Map<String, double> fromPoint(Point point) =>
      {'x': point.x, 'y': point.y};

  factory Background.fromJson(Map<String, dynamic> json) =>
      _$BackgroundFromJson(json);
  Map<String, dynamic> toJson() => _$BackgroundToJson(this);
}
