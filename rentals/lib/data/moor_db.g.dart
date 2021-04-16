// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class TenantData extends DataClass implements Insertable<TenantData> {
  final int id;
  final String name;
  final int phone;
  final String email;
  final String roomcode;
  TenantData(
      {@required this.id,
      @required this.name,
      @required this.phone,
      @required this.email,
      @required this.roomcode});
  factory TenantData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return TenantData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      phone: intType.mapFromDatabaseResponse(data['${effectivePrefix}phone']),
      email:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}email']),
      roomcode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}roomcode']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<int>(phone);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || roomcode != null) {
      map['roomcode'] = Variable<String>(roomcode);
    }
    return map;
  }

  TenantCompanion toCompanion(bool nullToAbsent) {
    return TenantCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      roomcode: roomcode == null && nullToAbsent
          ? const Value.absent()
          : Value(roomcode),
    );
  }

  factory TenantData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TenantData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      phone: serializer.fromJson<int>(json['phone']),
      email: serializer.fromJson<String>(json['email']),
      roomcode: serializer.fromJson<String>(json['roomcode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'phone': serializer.toJson<int>(phone),
      'email': serializer.toJson<String>(email),
      'roomcode': serializer.toJson<String>(roomcode),
    };
  }

  TenantData copyWith(
          {int id, String name, int phone, String email, String roomcode}) =>
      TenantData(
        id: id ?? this.id,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        roomcode: roomcode ?? this.roomcode,
      );
  @override
  String toString() {
    return (StringBuffer('TenantData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('roomcode: $roomcode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(name.hashCode,
          $mrjc(phone.hashCode, $mrjc(email.hashCode, roomcode.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is TenantData &&
          other.id == this.id &&
          other.name == this.name &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.roomcode == this.roomcode);
}

class TenantCompanion extends UpdateCompanion<TenantData> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> phone;
  final Value<String> email;
  final Value<String> roomcode;
  const TenantCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.roomcode = const Value.absent(),
  });
  TenantCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required int phone,
    @required String email,
    @required String roomcode,
  })  : name = Value(name),
        phone = Value(phone),
        email = Value(email),
        roomcode = Value(roomcode);
  static Insertable<TenantData> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<int> phone,
    Expression<String> email,
    Expression<String> roomcode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (roomcode != null) 'roomcode': roomcode,
    });
  }

  TenantCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<int> phone,
      Value<String> email,
      Value<String> roomcode}) {
    return TenantCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      roomcode: roomcode ?? this.roomcode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (phone.present) {
      map['phone'] = Variable<int>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (roomcode.present) {
      map['roomcode'] = Variable<String>(roomcode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TenantCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('roomcode: $roomcode')
          ..write(')'))
        .toString();
  }
}

class $TenantTable extends Tenant with TableInfo<$TenantTable, TenantData> {
  final GeneratedDatabase _db;
  final String _alias;
  $TenantTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  GeneratedIntColumn _phone;
  @override
  GeneratedIntColumn get phone => _phone ??= _constructPhone();
  GeneratedIntColumn _constructPhone() {
    return GeneratedIntColumn(
      'phone',
      $tableName,
      false,
    );
  }

  final VerificationMeta _emailMeta = const VerificationMeta('email');
  GeneratedTextColumn _email;
  @override
  GeneratedTextColumn get email => _email ??= _constructEmail();
  GeneratedTextColumn _constructEmail() {
    return GeneratedTextColumn('email', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _roomcodeMeta = const VerificationMeta('roomcode');
  GeneratedTextColumn _roomcode;
  @override
  GeneratedTextColumn get roomcode => _roomcode ??= _constructRoomcode();
  GeneratedTextColumn _constructRoomcode() {
    return GeneratedTextColumn('roomcode', $tableName, false,
        minTextLength: 1, maxTextLength: 5);
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, phone, email, roomcode];
  @override
  $TenantTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tenant';
  @override
  final String actualTableName = 'tenant';
  @override
  VerificationContext validateIntegrity(Insertable<TenantData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone'], _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email'], _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('roomcode')) {
      context.handle(_roomcodeMeta,
          roomcode.isAcceptableOrUnknown(data['roomcode'], _roomcodeMeta));
    } else if (isInserting) {
      context.missing(_roomcodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TenantData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TenantData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TenantTable createAlias(String alias) {
    return $TenantTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TenantTable _tenant;
  $TenantTable get tenant => _tenant ??= $TenantTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tenant];
}
