import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:snail_db/src/schema.dart';

class Document<T extends Schema> {
  Future<List<T>> findMany() async {
    final storage = FlutterSecureStorage();
    final result = await storage.readAll();

    // return result.entries
    //     .where((element) => element.key.startsWith('snail:$documentName'))
    //     .map((e) => fromMap(json.decode(e.value)))
    //     .toList();
    return [];
  }

  Future<void> create(Schema schema) async {
    final storage = FlutterSecureStorage();

    await storage.write(
      key: 'snail@document:${schema.id}',
      value: json.encode(schema),
    );
  }
}
