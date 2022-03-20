import 'package:hive/hive.dart';

import 'package:getittest/domain/models/person.dart';

part 'person_list.g.dart';

@HiveType(typeId: 1)
class PersonList {
  @HiveField(0)
  List<Person>? personDataList;
  PersonList({
    this.personDataList,
  });
}
