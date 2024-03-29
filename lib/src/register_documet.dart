import 'package:snail_db/snail_db.dart';

class RegisterDocument<T extends Schema> {
  final String documentName;
  final T Function(Map<String, dynamic> map) fromMap;

  RegisterDocument({
    required this.documentName,
    required this.fromMap,
  });
}
