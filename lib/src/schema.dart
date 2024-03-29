import 'package:uuid/uuid.dart';

abstract class Schema {
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;

  Schema({
    this.id,
    this.createdAt,
    this.updatedAt,
  }) {
    id = id ?? Uuid().v4();
    createdAt = createdAt ?? DateTime.now();
    updatedAt = updatedAt ?? DateTime.now();
  }

  Map<String, dynamic> toMap();
}
