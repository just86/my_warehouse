import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //++INVENTORY/////////////////////////////////////////////////////////////////
  static Future<void> createTablesInventory(sql.Database database) async {
    await database.execute("""CREATE TABLE inventory(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
      """);
  }
// id: the id of a item
// title, description: name and description of your activity
// created_at: the time that the item was created. It will be automatically handled by SQLite

  static Future<sql.Database> dbInventory() async {
    return sql.openDatabase(
      'warehouse.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTablesInventory(database);
      },
    );
  }

  // Create new item (journal)
  static Future<int> createItemInventory(String title) async {
    final db = await SQLHelper.dbInventory();

    final data = {'title': title,};
    final id = await db.insert('inventory', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  // Update an item by id
  static Future<int> updateItemInventory(
      int id, String title,) async {
    final db = await SQLHelper.db();

    final data = {
      'title': title,
      'createdAt': DateTime.now().toString()
    };

    final result =
    await db.update('inventory', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  // Delete
  static Future<void> deleteItemInventory(int id) async {
    final db = await SQLHelper.db();
    try {
      await db.delete("inventory", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Something went wrong when deleting an item: $err");
    }
  }

  // Read all items (journals)
  static Future<List<Map<String, dynamic>>> getItemsInventory() async {
    final db = await SQLHelper.db();
    return db.query('inventory', orderBy: "id");
  }

  // Read a single item by id
  // The app doesn't use this method but I put here in case you want to see it
  static Future<List<Map<String, dynamic>>> getItemInventory(int id) async {
    final db = await SQLHelper.db();
    return db.query('inventory', where: "id = ?", whereArgs: [id], limit: 1);
  }

  //--INVENTORY/////////////////////////////////////////////////////////////////



  //++INVENTORY_DATA////////////////////////////////////////////////////////////
  static Future<void> createTablesInventoryData(sql.Database database) async {
    await database.execute("""CREATE TABLE inventory_data(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        inventory_id INTEGER,
        quantity INTEGER,
        barcode TEXT,
        title TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
      """);
  }
// id: the id of a item
// title, description: name and description of your activity
// created_at: the time that the item was created. It will be automatically handled by SQLite

  static Future<sql.Database> dbInventoryData() async {
    return sql.openDatabase(
      'warehouse.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTablesInventory(database);
      },
    );
  }

  // Create new item (journal)
  static Future<int> createItemInventoryData(
      String title, String barcode, int inventoryId, int quantity) async {
    final db = await SQLHelper.dbInventory();

    final data = {
      'title': title,
      'barcode': barcode,
      'inventory_id': inventoryId,
      'quantity': quantity
    };
    final id = await db.insert('inventory_data', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  // Update an item by id
  static Future<int> updateItemInventoryData(int id, String title,
      String barcode, int inventoryId, int quantity) async {
    final db = await SQLHelper.db();

    final data = {
      'title': title,
      'barcode': barcode,
      'inventory_id': inventoryId,
      'quantity': quantity,
      'createdAt': DateTime.now().toString()
    };

    final result =
        await db.update('inventory_data', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  // Delete
  static Future<void> deleteItemInventoryData(int id) async {
    final db = await SQLHelper.db();
    try {
      await db.delete("inventory", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Something went wrong when deleting an item: $err");
    }
  }

  // Read all items (journals)
  static Future<List<Map<String, dynamic>>> getItemsInventoryData() async {
    final db = await SQLHelper.db();
    return db.query('inventory', orderBy: "id");
  }

  // Read a single item by id
  // The app doesn't use this method but I put here in case you want to see it
  static Future<List<Map<String, dynamic>>> getItemInventoryData(int id) async {
    final db = await SQLHelper.db();
    return db.query('inventory', where: "id = ?", whereArgs: [id], limit: 1);
  }

  //--INVENTORY_DATA////////////////////////////////////////////////////////////






  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE items(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title TEXT,
        description TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
      """);
  }
// id: the id of a item
// title, description: name and description of your activity
// created_at: the time that the item was created. It will be automatically handled by SQLite

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'warehouse.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }

  // Create new item (journal)
  static Future<int> createItem(String title, String? descrption) async {
    final db = await SQLHelper.db();

    final data = {'title': title, 'description': descrption};
    final id = await db.insert('items', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  // Read all items (journals)
  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await SQLHelper.db();
    return db.query('items', orderBy: "id");
  }

  // Read a single item by id
  // The app doesn't use this method but I put here in case you want to see it
  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await SQLHelper.db();
    return db.query('items', where: "id = ?", whereArgs: [id], limit: 1);
  }

  // Update an item by id
  static Future<int> updateItem(
      int id, String title, String? descrption) async {
    final db = await SQLHelper.db();

    final data = {
      'title': title,
      'description': descrption,
      'createdAt': DateTime.now().toString()
    };

    final result =
    await db.update('items', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  // Delete
  static Future<void> deleteItem(int id) async {
    final db = await SQLHelper.db();
    try {
      await db.delete("items", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Something went wrong when deleting an item: $err");
    }
  }
}