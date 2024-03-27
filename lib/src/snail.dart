import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:snail_db/src/document.dart';
import 'package:snail_db/src/schema.dart';

class Snail {
  Snail._();
  static final instance = Snail._();

  final Map<Type, dynamic> _documents = {};

  Future<void> init({required List<Document<Schema>> documents}) async {
    final storage = FlutterSecureStorage();

    for (var document in documents) {
      instance._documents[document.runtimeType] = document;

      await storage.write(
        key: 'snail:${document.documentName}',
        value: jsonEncode({}),
      );
    }
  }

  Document<T> document<T>() {
    final typeName = T.toString();

    if (_documents.containsKey(typeName)) {
      return _documents[typeName] as Document<T>;
    } else {
      throw Exception('table');
    }
  }
}
