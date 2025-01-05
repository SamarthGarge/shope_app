import 'package:json_annotation/json_annotation.dart';
part 'dod.g.dart';

@JsonSerializable()
class Dob {
  final String date;
  final int age;

  Dob({required this.date, required this.age});

  factory Dob.fromJson(Map<String, dynamic> json) {
    return Dob(
      date: json['date'],
      age: json['age'],
    );
  }
}
