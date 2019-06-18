import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'historical_detail.g.dart';

@JsonSerializable()
class HistoricalDetail extends Equatable {
  final String title;
  @JsonKey(fromJson: _Serializer.toContent, toJson: _Serializer.fromContent)
  final dynamic content;

  HistoricalDetail({@required this.title, @required this.content});

  factory HistoricalDetail.fromJson(Map<String, dynamic> json) =>
      _$HistoricalDetailFromJson(json);

  Map<String, dynamic> toJson() => _$HistoricalDetailToJson(this);
}

class _Serializer {
  static dynamic toContent(dynamic json) {
    if (json is List<Map<String, dynamic>>)
      return json.map((node) => HistoricalDetail.fromJson(node)).toList();
    return json as String;
  }

  static dynamic fromContent(dynamic content) {
    if (content is List<HistoricalDetail>)
      return content.map((item) => item.toJson()).toList();
    return content;
  }
}
