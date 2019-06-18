import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'historical_detail.dart';

part 'history.g.dart';

@JsonSerializable()
class History extends Equatable {
  @JsonKey(toJson: _Serializer.toJson)
  final List<HistoricalDetail> history;

  History({@required this.history});

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryToJson(this);
}

class _Serializer {
  static List<Map<String, dynamic>> toJson(List<HistoricalDetail> history) {
    return history.map((d) => d.toJson()).toList();
  }
}
