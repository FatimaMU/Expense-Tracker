// 1. install sqflite and path third party packages
// 2. import sqflite and path libraries
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ExpenseDatabase {
  // this method returns a Future<Database> object, so it should be an async method
  Future<Database> getDatabase() async {
    // get the default databases location
    String dbPath = await getDatabasesPath();
    // If the database is already created, get an instance of it.
    // If it is not there, onCreate is executed
    Database db = await openDatabase(
      // to avoid errors in the database path use join method
      // the database name should always end with .db
      join(dbPath, 'expenses.db'),
      // executed only when the database is not there or when the version is incremented
      onCreate: (db, version) => db.execute(
        'CREATE TABLE expenses(id TEXT PRIMARY KEY, title TEXT, amount DOUBLE, category TEXT, date INT)',
      ),
      // increment version number only when the database scheme changes: add/drop table, add/drop column, add/drop relation
      version: 1,
    );
    return db;
  }
}
