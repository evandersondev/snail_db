import 'package:snail_db/snail_db.dart';

void main() async {
  final snail = Snail.instance;

  // await snail.init(documents: [Document<UserSchema>('users')]);

  // final newUser = UserSchema(name: 'Evanderson', email: 'evanderson@mail.com');

  // await snail.document<UserSchema>().create(newUser);

  // final users = snail.document<UserSchema>().findMany();
}
