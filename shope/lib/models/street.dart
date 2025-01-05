import 'package:json_annotation/json_annotation.dart';

part 'street.g.dart';


@JsonSerializable()
class Street {
  final int number;
  final String name;

  Street({required this.number, required this.name});

  factory Street.fromJson(Map<String, dynamic> json) {
    return Street(
      number: json['number'],
      name: json['name'],
    );
  }
}
