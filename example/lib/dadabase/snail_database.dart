import 'package:example/user_schema.dart';

import 'package:snail_db/snail_db.dart';

class SnailDB extends SnailDatabse {
  @override
  List<Document> get documents => [
        Document<UserSchema>(
          documentName: 'users',
          fromMap: UserSchema.fromMap,
        ),
      ];
}
