// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Kith.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kithain _$KithainFromJson(Map<String, dynamic> json) {
  return Kithain(
      name: json['name'],
      icon: json['icon'],
      court: json['court'],
      description: json['description'],
      affinities: json['affinities'],
      backgrounds: (json['backgrounds'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(k,
            e == null ? null : Background.fromJson(e as Map<String, dynamic>)),
      ));
}

Map<String, dynamic> _$KithainToJson(Kithain instance) => <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'description': instance.description,
      'court': _$CourtEnumMap[instance.court],
      'affinities': instance.affinities,
      'backgrounds': instance.backgrounds
    };

const _$CourtEnumMap = <Court, dynamic>{
  Court.seelie: 'seelie',
  Court.unseelie: 'unseelie',
  Court.shadow: 'shadow'
};

Thallain _$ThallainFromJson(Map<String, dynamic> json) {
  return Thallain(
      name: json['name'],
      icon: json['icon'],
      description: json['description'],
      affinities: json['affinities'],
      background: json['background'] == null
          ? null
          : Background.fromJson(json['background'] as Map<String, dynamic>),
      court: json['court']);
}

Map<String, dynamic> _$ThallainToJson(Thallain instance) => <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'description': instance.description,
      'court': _$CourtEnumMap[instance.court],
      'affinities': instance.affinities,
      'background': instance.background
    };
