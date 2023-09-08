import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:path/path.dart';

class DatabaseHelper {
  static final _databaseName = "my_database.db";
  static final _databaseVersion = 1;

  static final table = 'my_table';

  static final columnId = '_id';
  static final columnLatitude = 'latitude';
  static final columnLongitude = 'longitude';
  static final columnUuid = 'uuid';

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table (
        $columnId INTEGER PRIMARY KEY,
        $columnLatitude REAL NOT NULL,
        $columnLongitude REAL NOT NULL,
        $columnUuid REAL NOT NULL
      )
    ''');
  }

  static final DatabaseHelper instance = DatabaseHelper._init();

  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('locations.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<int> insert(UserLocation userLocation) async {
    final db = await database;
    final row = {
      columnLatitude: userLocation.latitude,
      columnLongitude: userLocation.longitude,
      columnUuid: userLocation.uuid,
    };
    return await db.insert(table, row);
  }

  Future<List<UserLocation>> queryAllRows() async {
    final db = await database;
    final rows = await db.query(table);
    return rows
        .map((row) => UserLocation(
              latitude: row[columnLatitude] as double,
              longitude: row[columnLongitude] as double,
              uuid: row[columnUuid] as String,
            ))
        .toList();
  }

  Future<void> removeLocation(String id) async {
    // Get a reference to the database.
    final db = await database;

    // Remove the Dog from the database.
    await db.delete(
      '$table',
      // Use a `where` clause to delete a specific dog.
      where: '$columnUuid = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
  }

  Future<void> deleteAll() async {
    // Get a reference to the database.
    final db = await database;

    // Remove the Dog from the database.
    await db.delete(
      '$table',
      // Use a `where` clause to delete a specific dog.
      // where: 'id = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      // whereArgs: [id],
    );
  }
}

class UserLocation {
  double? latitude;
  double? longitude;
  String? uuid;

  UserLocation(
      {required this.latitude, required this.longitude, required this.uuid});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
      'uuid': uuid,
    };

    return map;
  }

  UserLocation.fromMap(Map<String, dynamic> map) {
    latitude = map['latitude'];
    longitude = map['longitude'];
    uuid = map['uuid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['uuid'] = this.uuid;
    return data;
  }
}
