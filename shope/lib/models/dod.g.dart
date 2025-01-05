// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dob _$DobFromJson(Map<String, dynamic> json) => Dob(
      date: json['date'] as String,
      age: (json['age'] as num).toInt(),
    );

Map<String, dynamic> _$DobToJson(Dob instance) => <String, dynamic>{
      'date': instance.date,
      'age': instance.age,
    };
