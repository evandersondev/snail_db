import 'package:flutter/material.dart';

import 'package:example/app_widget.dart';
import 'package:example/dadabase/snail_database.dart';
import 'package:example/user_schema.dart';

import 'package:snail_db/snail_db.dart';

void main() async {
  await SnailDatabse.initCollection('my_collection');

  final user = UserSchema(
    name: 'Evanderson',
    email: 'evanderson@mail.com',
  );

  // await snail.document<UserSchema>().create(user);

  // final users = await snail.document<UserSchema>().findMany();
  // print(users.toString());

  runApp(const AppWidget());
}
