import 'package:snail_db/src/document.dart';
import 'package:snail_db/src/schema.dart';

class Snail {
  Snail._();
  static final instance = Snail._();

  final Map<Type, dynamic> _documents = {};

  Future<void> init({required List<Document<Schema>> document}) async {}

  Document<T> document<T>() {
    final typeName = T.toString();

    if (_documents.containsKey(typeName)) {
      return _documents[typeName] as Document<T>;
    } else {
      throw Exception('table');
    }
  }
}
