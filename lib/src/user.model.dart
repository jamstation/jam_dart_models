import 'package:meta/meta.dart';

import 'data.model.dart';
import 'user_profile.model.dart';

@immutable
class User extends Data {
  final String uid;
  final String name;
  final String phone;
  final String email;
  final UserProfile profile;

  const User({
    String key,
    this.uid,
    this.name,
    this.phone,
    this.email,
    this.profile,
  }) : super(key: key);

  User.fromMap({String key, Map<String, dynamic> map})
      : this.uid = map['uid'],
        this.name = map['name'],
        this.phone = map['phone'],
        this.email = map['email'],
        this.profile = map['profile'] == null
            ? null
            : UserProfile.fromMap(
                key: null,
                map: Map<String, dynamic>.from(map['profile']),
              ),
        super(key: key);

  @override
  Map<String, dynamic> toMap() {
    return {
      'uid': this.uid,
      'name': this.name,
      'phone': this.phone,
      'email': this.email,
      'profile': this.profile.toMap(),
    };
  }

  User copyWith({
    String key,
    String uid,
    String name,
    String phone,
    String email,
    UserProfile profile,
  }) {
    return User(
      key: key ?? this.key,
      uid: uid ?? this.uid,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      profile: profile ?? this.profile,
    );
  }
}
