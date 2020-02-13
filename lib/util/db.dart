import 'dart:io' as io;

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;
  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "fhir.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute("CREATE TABLE Classes ("
        "resourceType TEXT PRIMARY KEY,"
        "id TEXT,"
        "deviceId TEXT,"
        "lastId TEXT,"
        "total INT"
        ")");
  }

  Future<int> saveResource(dynamic resource) async {
    var dbClient = await db;
    int res = await dbClient.insert(resource.runtimeType.toString(), resource.toJson());
    return res;
  }

  Future<List<Map<String, dynamic>>> getResource(String table) async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM ' + table);
//    List<dynamic> employees = new List();
//    for (int i = 0; i < list.length; i++) {
//      var user =
//      new User(list[i]["firstname"], list[i]["lastname"], list[i]["dob"]);
//      user.setUserId(list[i]["id"]);
//      employees.add(user);
//    }
//    print(employees.length);
    return list;
  }

  Future<int> deleteResource(dynamic resource) async {
    var dbClient = await db;
    int res =
    await dbClient.rawDelete('DELETE FROM Classes WHERE resourceType = "${resource.resourceType}"');
    return res;
  }

  Future<bool> update(dynamic resource) async {
    var dbClient = await db;
    int res =   await dbClient.update(resource.runtimeType.toString(), resource.toMap(),
        where: "id = ?", whereArgs: <int>[resource.id]);
    return res > 0 ? true : false;
  }
}

