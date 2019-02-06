class GeoPoint {
  const GeoPoint(this.latitude, this.longitude);

  final double latitude;
  final double longitude;

  @override
  bool operator ==(dynamic o) =>
      o is GeoPoint && o.latitude == latitude && o.longitude == longitude;

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;
}
