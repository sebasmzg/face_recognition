import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<void> deleteDatabaseFile() async {
  final databasePath = await getDatabasesPath();
  final path = join(databasePath, 'MyDatabase.db'); // Cambia 'MyDatabase.db' por el nombre de tu BD

  try {
    await deleteDatabase(path);
    print("✅ La base de datos ha sido eliminada con éxito.");
  } catch (e) {
    print("❌ Error al eliminar la base de datos: $e");
  }
}
