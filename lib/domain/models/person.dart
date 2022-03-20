import 'package:hive/hive.dart';
part 'person.g.dart';

@HiveType(typeId: 2)
class Person {
  @HiveField(0)
  String? email;

  @HiveField(1)
  String? password;

  Person({
    this.email,
    this.password,
  });
}
