import 'package:injectable/injectable.dart';
import 'package:portfolio_website/core/errors/failure.dart';
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
    try {
      await _supabaseClient.from(path).insert(data);
    } on PostgrestException catch (e) {
      throw SupabaseFailure.fromPostgrestException(exception: e);
    } on Exception catch (e) {
      throw SupabaseFailure.fromException(exception: e);
    }
  }

  @override
  Future<Map<String, dynamic>> fetchSpecificData({
    required String path,
    required String columnValue,
    required String columnName,
  }) async {
    try {
      final Map<String, dynamic> data = await _supabaseClient
          .from(path)
          .select()
          .eq(columnName, columnValue)
          .single();
      return data;
    } on PostgrestException catch (e) {
      throw SupabaseFailure.fromPostgrestException(exception: e);
    } on Exception catch (e) {
      throw SupabaseFailure.fromException(exception: e);
    }
  }

  @override
  Future<List<Map<String, dynamic>>> fetchAllData({
    required String path,
  }) async {
    try {
      final List<Map<String, dynamic>> data = await _supabaseClient
          .from(path)
          .select();
      return data;
    } on PostgrestException catch (e) {
      throw SupabaseFailure.fromPostgrestException(exception: e);
    } on Exception catch (e) {
      throw SupabaseFailure.fromException(exception: e);
    }
  }

  @override
  Future<Map<String, dynamic>> fetchDataWithSort({
    required String path,
    required String columnName,
    required String columnValue,
  }) async {
    try {
      final Map<String, dynamic> data = await _supabaseClient
          .from(path)
          .select()
          .eq(columnName, columnValue)
          .single();
      return data;
    } on PostgrestException catch (e) {
      throw SupabaseFailure.fromPostgrestException(exception: e);
    } on Exception catch (e) {
      throw SupabaseFailure.fromException(exception: e);
    }
  }

  Future<List<Map<String, dynamic>>> fetchDataWithSortAndOrder({
    required String path,
    required String columnName,
    required String columnValue,
    required String orderColumn,
    required bool ascending,
  }) async {
    try {
      final List<Map<String, dynamic>> data = await _supabaseClient
          .from(path)
          .select()
          .eq(columnName, columnValue)
          .order(orderColumn, ascending: ascending);
      return data;
    } on PostgrestException catch (e) {
      throw SupabaseFailure.fromPostgrestException(exception: e);
    } on Exception catch (e) {
      throw SupabaseFailure.fromException(exception: e);
    }
  }

  @override
  Future<bool> isDataExists({
    required String path,
    required String columnValue,
    required String columnName,
    required int limit,
  }) async {
    try {
      final List<Map<String, dynamic>> response = await _supabaseClient
          .from(path)
          .select(columnName)
          .eq(columnName, columnValue)
          .limit(limit);
      return response.isNotEmpty;
    } on PostgrestException catch (e) {
      throw SupabaseFailure.fromPostgrestException(exception: e);
    } on Exception catch (e) {
      throw SupabaseFailure.fromException(exception: e);
    }
  }
}
