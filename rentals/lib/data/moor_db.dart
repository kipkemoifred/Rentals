import 'package:moor_flutter/moor_flutter.dart';
part 'moor_db.g.dart';
class Tenant extends Table{
IntColumn get id=>integer().autoIncrement()();
TextColumn get name=>text().withLength(min: 1,max: 50)();
IntColumn get phone=>integer()();
TextColumn get email=>text().withLength(min: 1,max: 50)();
TextColumn get roomcode=>text().withLength(min: 1,max: 5)();

}
@UseMoor(tables:[Tenant])
class AppDatabase extends _$AppDatabase {
  AppDatabase():super(FlutterQueryExecutor.inDatabaseFolder(path:'db.sqlite',
  logStatements:true));
    @override
  int get schemaVersion => 1;

  Future<List<Tenant>> getAllTasks() => select(tenant).get();
  Stream<List<Tenant>> watchAllTasks() => select(tenant).watch();
  Future insertTenant(Tenant tenant) => into(tenant).insert(tenant);
  Future updateTenant(Tenant tenant) => update(tenant).replace(tenant);
  Future deleteTenant(Tenant tenant) => delete(tenant).delete(tenant);

}
