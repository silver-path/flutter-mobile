import 'package:json_annotation/json_annotation.dart';

@JsonKey(fromJson: Serializer.fromCourt, toJson: Serializer.toCourt)
enum Court { seelie, unseelie, shadow }

class Serializer {
  static String fromCourt(Court court) => court == Court.seelie
      ? 'seelie'
      : court == Court.unseelie
          ? 'unseelie'
          : court == Court.shadow ? 'shadow' : throw Error();

  static Court toCourt(String json) => json == 'seelie'
      ? Court.seelie
      : json == 'unseelie'
          ? Court.unseelie
          : json == 'shadow' ? Court.shadow : throw Error();
}
