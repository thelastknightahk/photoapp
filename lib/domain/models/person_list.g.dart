// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_list.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersonListAdapter extends TypeAdapter<PersonList> {
  @override
  final int typeId = 1;

  @override
  PersonList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PersonList(
      personDataList: (fields[0] as List?)?.cast<Person>(),
    );
  }

  @override
  void write(BinaryWriter writer, PersonList obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.personDataList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
