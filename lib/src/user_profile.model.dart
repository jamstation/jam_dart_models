import 'package:jam_dart_utilities/utilities.dart';
import 'package:meta/meta.dart';

import 'data.model.dart';

@immutable
class UserProfile extends Data {
  final String name;
  final DateTime birthday;
  final String gender;
  final String photoUrl;

  int get age => findAge(birthday);

  const UserProfile({
    String key,
    this.name,
    this.birthday,
    this.gender,
    this.photoUrl,
  }) : super(key: key);

  UserProfile.fromMap({String key, Map<String, dynamic> map})
      : this.name = map['name'],
        this.birthday = map['birthday'],
        this.gender = map['gender'],
        this.photoUrl = map['photoUrl'],
        super(key: key);

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'birthday': this.birthday,
      'gender': this.gender,
      'photoUrl': this.photoUrl,
    };
  }

  UserProfile copyWith({
    String key,
    String name,
    String birthday,
    String gender,
    String photoUrl,
  }) {
    return UserProfile(
      key: key ?? this.key,
      name: name ?? this.name,
      birthday: birthday ?? this.birthday,
      gender: gender ?? this.gender,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }
}
