import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:miniproject/screens/infopage.dart';


Future<int> Stopdatabase(String board,String dest,int ad,int child) async {
  
  // Avoid errors caused by flutter upgrade.
  // Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final database = openDatabase(
    // Set the path to the database. Note: Using the `join` function from the
    // `path` package is best practice to ensure the path is correctly
    // constructed for each platform.
    join(await getDatabasesPath(), 'stopsec.db'),
    // When the database is first created, create a table to store dogs.
    onCreate: (db, version) {
      // Run the CREATE TABLE statement on the database.
      return db.execute(
        'CREATE TABLE stops(id INTEGER PRIMARY KEY, place TEXT, distance INTEGER)',
      );
    },
    // Set the version. This executes the onCreate function and provides a
    // path to perform database upgrades and downgrades.
    version: 1,
  );

  // Define a function that inserts dogs into the database
  Future<void> insertStop(Stop stop) async {
    // Get a reference to the database.
    final db = await database;

    // Insert the Dog into the correct table. You might also specify the
    // `conflictAlgorithm` to use in case the same dog is inserted twice.
    //
    // In this case, replace any previous data.
    await db.insert(
      'stops',
      stop.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // A method that retrieves all the dogs from the dogs table.
  Future<List<Stop>> stops() async {
    // Get a reference to the database.
    final db = await database;

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('stops');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return Stop(
        id: maps[i]['id'],
        place: maps[i]['place'],
        distance: maps[i]['distance'],
      );
    });
  }

  Future<void> updateStop(Stop stop) async {
    // Get a reference to the database.
    final db = await database;

    // Update the given Dog.
    await db.update(
      'stops',
      stop.toMap(),
      // Ensure that the Dog has a matching id.
      where: 'id = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [stop.id],
    );
  }

  Future<void> deleteStop(int id) async {
    // Get a reference to the database.
    final db = await database;

    // Remove the Dog from the database.
    await db.delete(
      'dogs',
      // Use a `where` clause to delete a specific dog.
      where: 'id = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
  }

  // Create a Dog and add it to the dogs table
  var ktm = const Stop(
    id: 0,
    place: 'Kottayam',
    distance: 3,
  );
   var pla = const Stop(
    id: 1,
    place: 'Pala',
    distance: 32,
  );
   var ekm = const Stop(
    id: 2,
    place: 'Eranakulam',
    distance: 60,
  );

  await insertStop(ktm);
  await insertStop(pla);
  await insertStop(ekm);

  print(await stops()); 

  final db=await database;
  var res = await db.rawQuery("SELECT distance FROM stops WHERE place LIKE '$board'");
  print(res[0]["distance"]);
  var a=res[0]["distance"] as int;

  print(a);

  var res2 = await db.rawQuery("SELECT distance FROM stops WHERE place LIKE '$dest'");
    var b=res2.first["distance"] as int;
  print(b);

  print(a-b);





  return ad*child*(a-b);

}

class Stop {
  final int id;
  final String place;
  final int distance;

  const Stop({
    required this.id,
    required this.place,
    required this.distance,
  });

  
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'place': place,
      'distance': distance,
    };
  }

  @override
  String toString() {
    return 'Stop{id: $id, name: $place, age: $distance}';
  }

}


