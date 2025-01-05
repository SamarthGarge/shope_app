// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      gender: json['gender'] as String,
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      picture: Picture.fromJson(json['picture'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'gender': instance.gender,
      'name': instance.name,
      'picture': instance.picture,
      'phone': instance.phone,
      'email': instance.email,
    };
