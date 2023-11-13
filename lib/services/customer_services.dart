part of 'services.dart';

class CustomerServices{
  final tablename = 'customer';

  Future<void> createTable(Database database) async {
    await database.execute("""CREATE TABLE IF NOT EXISTS $tablename (
        customer_id INTEGER UNSIGNED AUTOINCREMENT PRIMARY KEY,
        nama TEXT NOT NULL,
        alamat TEXT NOT NULL,
        id_card TEXT NOT NULL,)""");
  }

}
