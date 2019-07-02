// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kith.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kithain _$KithainFromJson(Map<String, dynamic> json) {
  return Kithain(
      name: json['name'],
      icon: json['icon'],
      decoration: json['decoration'],
      unveiling: json['unveiling'],
      description: json['description'],
      overview: json['overview'],
      affinity: json['affinity'],
      backgrounds: (json['backgrounds'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(k,
            e == null ? null : Background.fromJson(e as Map<String, dynamic>)),
      ),
      history: json['history']);
}

Map<String, dynamic> _$KithainToJson(Kithain instance) => <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'unveiling': instance.unveiling,
      'description': instance.description,
      'overview': instance.overview,
      'decoration': instance.decoration,
      'affinity': instance.affinity,
      'history': instance.history,
      'backgrounds': instance.backgrounds
    };

Thallain _$ThallainFromJson(Map<String, dynamic> json) {
  return Thallain(
      name: json['name'],
      icon: json['icon'],
      decoration: json['decoration'],
      unveiling: json['unveiling'],
      description: json['description'],
      overview: json['overview'],
      affinity: json['affinity'],
      background: json['background'] == null
          ? null
          : Background.fromJson(json['background'] as Map<String, dynamic>),
      history: json['history']);
}

Map<String, dynamic> _$ThallainToJson(Thallain instance) => <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'unveiling': instance.unveiling,
      'description': instance.description,
      'overview': instance.overview,
      'decoration': instance.decoration,
      'affinity': instance.affinity,
      'history': instance.history,
      'background': instance.background
    };
