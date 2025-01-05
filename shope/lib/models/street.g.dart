// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Street _$StreetFromJson(Map<String, dynamic> json) => Street(
      number: (json['number'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$StreetToJson(Street instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
    };
