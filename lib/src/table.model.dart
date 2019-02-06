import 'package:meta/meta.dart';

import 'data.model.dart';
import 'instance_creator.model.dart';

@immutable
class Table<T extends Data> extends Data {
  final String name;
  final String path;
  final String resolvedPath;
  final InstanceCreator<T> modelCreator;

  Table({
    @required String key,
    this.name,
    this.path,
    this.resolvedPath,
    this.modelCreator,
  }) : super(key: key);

  Table.fromMap({@required String key, @required Map<String, dynamic> map})
      : this.name = map['name'],
        this.path = map['path'],
        this.resolvedPath = map['path'],
        this.modelCreator = null,
        super(key: key);

  Table.from(Table<dynamic> table)
      : this.name = table.name,
        this.path = table.path,
        this.resolvedPath = table.resolvedPath,
        this.modelCreator = table.modelCreator,
        super(key: table.key);

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'path': this.path,
    };
  }

  Table<T> copyWith({
    String key,
    String name,
    String path,
    String resolvedPath,
    InstanceCreator<T> modelCreator,
  }) {
    return Table(
      key: key ?? this.key,
      name: name ?? this.name,
      path: path ?? this.path,
      resolvedPath: resolvedPath ?? this.resolvedPath,
      modelCreator: modelCreator ?? this.modelCreator,
    );
  }
}
