import 'package:meta/meta.dart';

@immutable
class Credential {
  final String username;
  final String password;

  const Credential(
    this.username,
    this.password,
  );
}
