import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

createDatabase() async {
  String databasesPath = await getDatabasesPath();
  String dbPath = join(databasesPath, 'my.db');

  var database = await openDatabase(dbPath, version: 1, onCreate: populateDb);
  return database;
}

void populateDb(Database db, int version) async {
    await db.execute("CREATE TABLE Classes ("
        "resourceType TEXT PRIMARY KEY,"
        "id TEXT,"
        "deviceId TEXT,"
        "lastId TEXT"
        ")");
}

