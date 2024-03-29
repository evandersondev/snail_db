import 'dart:convert';

import 'package:snail_db/snail_db.dart';

class UserSchema extends Schema {
  final String name;
  final String email;

  UserSchema({
    required this.name,
    required this.email,
  });

  UserSchema copyWith({
    String? name,
    String? email,
  }) {
    return UserSchema(
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'email': email});

    return result;
  }

  factory UserSchema.fromMap(Map<String, dynamic> map) {
    return UserSchema(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserSchema.fromJson(String source) =>
      UserSchema.fromMap(json.decode(source));

  @override
  String toString() => 'UserSchema(name: $name, email: $email)';
}
