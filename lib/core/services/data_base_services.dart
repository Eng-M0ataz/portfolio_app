abstract class DatabaseService {
  Future<void> addData({
    required Map<String, dynamic> data,
    required String path,
    String? docId,
  });

  Future<Map<String, dynamic>> fetchSpecificData({
    required String path,
    required String columnValue,
    required String columnName,
  });

  Future<List<Map<String, dynamic>>> fetchAllData({required String path});

  Future<bool> isDataExists({
    required String path,
    required String columnValue,
    required String columnName,
    required int limit,
  });

  Future<Map<String, dynamic>> fetchDataWithSort({
    required String path,
    required String columnName,
    required String columnValue,
  });
}
