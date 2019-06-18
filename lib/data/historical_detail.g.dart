// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historical_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoricalDetail _$HistoricalDetailFromJson(Map<String, dynamic> json) {
  return HistoricalDetail(
      title: json['title'] as String,
      content: _Serializer.toContent(json['content']));
}

Map<String, dynamic> _$HistoricalDetailToJson(HistoricalDetail instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': _Serializer.fromContent(instance.content)
    };
