import 'package:qoute_app/core/typedef.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:qoute_app/domain/networking/api_interface.dart';
import 'package:qoute_app/domain/networking/graphql_service.dart';

/// A service class implementing methods for basic API requests.
class ApiService implements ApiInterface {
  /// An instance of [GraphqlService] for network requests
  late final GraphqlService _graphqlService;

  /// A public constructor that is used to initialize the API service
  /// and setup the underlying [_graphqlService].
  ApiService(GraphqlService graphqlService) : _graphqlService = graphqlService;

  /// An implementation of the base method for requesting collection of data
  /// from the [endpoint].
  /// The response body must be a [T], else the [converter] fails.
  ///
  /// The [converter] callback is used to **deserialize** the response body
  /// into a [T] of objects of type [T].
  /// The callback is executed on each member of the response `body` List.
  /// [T] is usually set to a `Model`.

  @override
  Future<T> getData<T>({
    required String query,
    required T Function(Json json) response,
  }) async {
    late Json result;
    try {
      final response = await _graphqlService.get<QueryResult>(query);
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

  /// An implementation of the base method for sending collection of data
  /// to the [endpoint].
  /// The response body must be a [T], else the [converter] fails.
  ///
  /// The [converter] callback is used to **deserialize** the response body
  /// into a [T] of objects of type [T].
  /// The callback is executed on each member of the response `body` List.
  /// [T] is usually set to a `Model`.
  ///
  /// [param] holds any query variable for the request.
  @override
  Future<T> postData<T>({
    required Json param,
    required String query,
    required T Function(dynamic json) response,
  }) async {
    late Json result;
    try {
      final response = await _graphqlService.post<QueryResult>(query, param);
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

  /// An implementation of the base method for updating collection of data
  /// to the [endpoint].
  /// The response body must be a [T], else the [converter] fails.
  ///
  /// The [converter] callback is used to **deserialize** the response body
  /// into a [T] of objects of type [T].
  /// The callback is executed on each member of the response `body` List.
  /// [T] is usually set to a `Model`.
  ///
  /// [param] holds any query variable for the request.
  @override
  Future<T> updateData<T>({
    required Json param,
    required String query,
    required T Function(dynamic json) response,
  }) async {
    late Json result;
    try {
      final response = await _graphqlService.update<QueryResult>(query, param);
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

  /// An implementation of the base method for deleting collection of data
  /// to the [endpoint].
  /// The response body must be a [T], else the [converter] fails.
  ///
  /// The [converter] callback is used to **deserialize** the response body
  /// into a [T] of objects of type [T].
  /// The callback is executed on each member of the response `body` List.
  /// [T] is usually set to a `Model`.
  ///
  /// [param] holds any query variable for the request.
  @override
  Future<T> deleteData<T>({
    required Json param,
    required String query,
    required T Function(dynamic json) response,
  }) async {
    late Json result;
    try {
      final response = await _graphqlService.delete<QueryResult>(query, param);
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
