import 'package:uuid/uuid.dart';

class Schema {
  // ignore: unused_field
  String? _id;
  DateTime? createdAt;
  DateTime? updatedAt;

  Schema() {
    _id = Uuid().v4();
    createdAt = DateTime.now();
    updatedAt = DateTime.now();
  }
}
