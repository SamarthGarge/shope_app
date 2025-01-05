import 'package:json_annotation/json_annotation.dart';
import 'package:shope/models/dod.dart';
import 'package:shope/models/id.dart';
import 'package:shope/models/location.dart';
import 'package:shope/models/loging.dart';
import 'package:shope/models/name.dart';
import 'package:shope/models/picture.dart';
import 'package:shope/models/registered.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String gender;
  final Name name;
  final Picture picture;
  final String phone;
  final String email;

  User({
    required this.gender,
    required this.name,
    required this.picture,
    required this.phone,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      gender: json['gender'] as String,
      name: Name.fromJson(json['name']),
      picture: Picture.fromJson(json['picture']),
      phone: json['phone'] as String,
      email: json['email'] as String,
    );
  }

  @override
  String toString() {
    return 'User(name: ${name.first} ${name.last}, phone: $phone)';
  }
}