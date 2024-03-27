import 'package:snail_db/src/schema.dart';

class UserSchema extends Schema {
  final String name;
  final String email;

  UserSchema({
    required this.name,
    required this.email,
  });
}
