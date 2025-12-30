import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'data_base_services.dart';

@Singleton(as: DatabaseService)
@singleton
class SupabaseDataService implements DatabaseService {
  SupabaseDataService(this._supabaseClient);
  final SupabaseClient _supabaseClient;

  @override
  Future<void> addData({
    required Map<String, dynamic> data,
    required String path,
    String? docId,
  }) async {
    await _supabaseClient.from(path).insert(data);
  }

  @override
  Future<Map<String, dynamic>> fetchSpecificData({
    required String path,
    required String columnValue,
    required String columnName,
  }) async {
    final Map<String, dynamic> data = await _supabaseClient
        .from(path)
        .select()
        .eq(columnName, columnValue)
        .single();
    return data;
  }

  @override
  Future<Map<String, dynamic>> fetchAllData({required String path}) async {
    return await _supabaseClient.from(path).select().single();
  }

  @override
  Future<Map<String, dynamic>> fetchDataWithSort({
    required String path,
    required String columnName,
    required String columnValue,
  }) async {
    final Map<String, dynamic> data = await _supabaseClient
        .from(path)
        .select()
        .eq(columnName, columnValue)
        .single();
    return data;
  }

  Future<List<Map<String, dynamic>>> fetchDataWithSortAndOrder({
    required String path,
    required String columnName,
    required String columnValue,
    required String orderColumn,
    required bool ascending,
  }) async {
    final List<Map<String, dynamic>> data = await _supabaseClient
        .from(path)
        .select()
        .eq(columnName, columnValue)
        .order(orderColumn, ascending: ascending);
    return data;
  }

  @override
  Future<bool> isDataExists({
    required String path,
    required String columnValue,
    required String columnName,
    required int limit,
  }) async {
    final List<Map<String, dynamic>> response = await _supabaseClient
        .from(path)
        .select(columnName)
        .eq(columnName, columnValue)
        .limit(limit);
    return response.isNotEmpty;
  }
}
