import 'dart:convert';

import 'package:hive/hive.dart';

part 'person_list.g.dart';

@HiveType(typeId: 1)
class PersonList {
  @HiveField(0)
  String? email;

  @HiveField(1)
  String? password;
  PersonList({
    this.email,
    this.password,
  });
 

  PersonList copyWith({
    String? email,
    String? password,
  }) {
    return PersonList(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  factory PersonList.fromMap(Map<String, dynamic> map) {
    return PersonList(
      email: map['email'],
      password: map['password'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PersonList.fromJson(String source) => PersonList.fromMap(json.decode(source));

  @override
  String toString() => 'PersonList(email: $email, password: $password)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PersonList &&
      other.email == email &&
      other.password == password;
  }

  @override
  int get hashCode => email.hashCode ^ password.hashCode;
}
