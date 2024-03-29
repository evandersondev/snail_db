import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:snail_db/snail_db.dart';

/*
  Snail.initCollections();
  final snail = Snail.getInstance();
  final box = await snail.document<UserScema>()
  
  await box.create(user);
  await box.findMany();
  await box.find(user.id);
  await box.delete(user.id);
*/

abstract class SnailDatabse {
  final Map<Type, Document> _documents = {};
  Map<Type, Document> get document => _documents;

  static Future<void> initCollection(String name) async {
    final storage = FlutterSecureStorage();

    await storage.write(key: 'snail@collection:$name', value: '');
    // for (var document in documents) {
    //   final documentName = 'snail:${document.documentName}';
    //   final documentExists = await storage.containsKey(key: 'documentName');

    //   if (!documentExists) {
    //     storage.write(
    //       key: 'snail:$documentName',
    //       value: json.encode([]),
    //     );
    //   }
    // }
  }

  Future<void> registerDocuments({required List<Document> documents}) async {
    final storage = FlutterSecureStorage();

    for (var document in documents) {
      // _documents[document.]
    }
  }
}
