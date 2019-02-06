import 'package:meta/meta.dart';

import 'data.model.dart';
import 'geo_point.model.dart';

@immutable
class Location extends Data {
  final String name;
  final String address;
  final GeoPoint geoPoint;

  const Location({
    String key,
    @required this.name,
    this.address,
    this.geoPoint,
  }) : super(key: key);

  Location.fromMap({@required String key, @required Map<String, dynamic> map})
      : this.name = map['name'],
        this.address = map['address'],
        this.geoPoint = map['geoPoint'],
        super(key: key);

  @override
  Map<String, dynamic> toMap() => {
        'name': this.name,
        'address': this.address,
        'geoPoint': this.geoPoint,
      };

  Location copyWith({
    String key,
    String name,
    String address,
    GeoPoint geoPoint,
  }) =>
      Location(
        key: key ?? this.key,
        name: name ?? this.name,
        address: address ?? this.address,
        geoPoint: geoPoint ?? this.geoPoint,
      );
}
