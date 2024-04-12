import 'package:qoute_app/core/typedef.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:qoute_app/domain/networking/api_interface.dart';
import 'package:qoute_app/domain/networking/graphql_service.dart';

class ApiService implements ApiInterface {
  late final GraphqlService _graphql;

  ApiService(GraphqlService graphql) : _graphql = graphql;

  @override
  Future<T> getData<T>({
    required String query,
    required T Function(Json json) response,
  }) async {
    late Json result;
    try {
      final response = await _graphql.get<QueryResult>(query);
      result = response.data!;
    } on GraphQLError catch (e) {
      throw Exception(e.message);
    }
    try {
      return response(result);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<T> postData<T>({
    required Json param,
    required String query,
    required T Function(dynamic json) response,
  }) async {
    late Json result;
    try {
      final response = await _graphql.post<QueryResult>(query, param);
      result = response.data!;
    } on GraphQLError catch (e) {
      throw Exception(e.message);
    }
    try {
      return response(result);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<T> updateData<T>({
    required Json param,
    required String query,
    required T Function(dynamic json) response,
  }) async {
    late Json result;
    try {
      final response = await _graphql.update<QueryResult>(query, param);
      result = response.data!;
    } on GraphQLError catch (e) {
      throw Exception(e.message);
    }
    try {
      return response(result);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<T> deleteData<T>({
    required Json param,
    required String query,
    required T Function(dynamic json) response,
  }) async {
    late Json result;
    try {
      final response = await _graphql.delete<QueryResult>(query, param);
      result = response.data!;
    } on GraphQLError catch (e) {
      throw Exception(e.message);
    }
    try {
      return response(result);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }
}
