import 'package:meta/meta.dart';

@immutable
abstract class Data {
  final String key;

  ///
  /// Construct from table columns
  ///
  const Data({this.key});

  ///
  /// Deserialize ( JSON -> Object )
  ///
  Data.fromMap({@required this.key, @required Map<String, dynamic> map});

  ///
  /// Serialize ( Object -> JSON )
  ///
  Map<String, dynamic> toMap();

  ///
  /// SameAs
  ///
  bool isSameAs(Data other) => this.key == other.key;
}
