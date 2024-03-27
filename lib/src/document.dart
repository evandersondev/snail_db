import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:snail_db/src/schema.dart';

class Document<T> {
  final String documentName;

  Document(this.documentName);

  Future<List<T>> findMany() async {
    final storage = FlutterSecureStorage();
    final result = await storage.read(key: 'snail:$documentName') as List?;

    if (result != null) {
      return Future.value([...result]);
    } else {
      throw Exception('Database not created');
    }
  }

  Future<void> create(Schema schema) async {
    final storage = FlutterSecureStorage();

    try {
      await storage.write(
        key: 'snail:$documentName',
        value: schema.toString(),
      );
    } catch (e) {
      throw Exception('Database not created');
    }
  }
}
