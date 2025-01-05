import 'package:shope/models/coordinates.dart';
import 'package:shope/models/street.dart';
import 'package:shope/models/timezone.dart';
import 'package:json_annotation/json_annotation.dart';
part 'location.g.dart';

@JsonSerializable()
class Location {
  final Street street;
  final String city;
  final String state;
  final String country;
  final int postcode;
  final Coordinates coordinates;
  final Timezone timezone;

  Location({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      street: Street.fromJson(json['street']),
      city: json['city'],
      state: json['state'],
      country: json['country'],
      postcode: json['postcode'],
      coordinates: Coordinates.fromJson(json['coordinates']),
      timezone: Timezone.fromJson(json['timezone']),
    );
  }
}
