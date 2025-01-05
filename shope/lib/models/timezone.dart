import 'package:json_annotation/json_annotation.dart';
part 'timezone.g.dart';

@JsonSerializable()
class Timezone {
  final String offset;
  final String description;

  Timezone({required this.offset, required this.description});

  factory Timezone.fromJson(Map<String, dynamic> json) {
    return Timezone(
      offset: json['offset'],
      description: json['description'],
    );
  }
}
