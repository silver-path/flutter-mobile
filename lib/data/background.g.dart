// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Background _$BackgroundFromJson(Map<String, dynamic> json) {
  return Background(
      url: json['url'] as String,
      position: Background.toPoint(json['position'] as Map<String, double>));
}

Map<String, dynamic> _$BackgroundToJson(Background instance) =>
    <String, dynamic>{
      'url': instance.url,
      'position': Background.fromPoint(instance.position)
    };
