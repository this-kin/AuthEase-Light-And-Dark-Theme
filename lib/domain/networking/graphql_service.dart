import 'package:flutter/foundation.dart';
import 'package:qoute_app/core/typedef.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:qoute_app/constants/api_constants.dart';

/// A service class that wraps the [GraphQLClient] instance and provides methods for
/// basic network requests.
class GraphqlService {
  /// This method assigns that is used to create a [GraphQLClient] and initialize
  /// the underlying [GraphQLClient] client.
  ///
  ValueNotifier<GraphQLClient> initialize() {
    HttpLink? httpLink;
    httpLink ??= HttpLink(ApiConstants.baseUrl);
    final ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
          link: httpLink, cache: GraphQLCache(store: InMemoryStore())),
    );

    return client;
  }

  /// This method sends a `GET` request to the [endpoint] and returns the
  /// **QueryResult** response.
  ///
  /// Any errors encountered during the request are caught and a custom
  /// [NetworkException] is thrown.
  ///
  /// [query] holds any query parameters for the request.
  Future<QueryResult> get<T>(String query) async {
    final client = initialize();
    final queryOptions = QueryOptions(document: gql(query));
    final result = await client.value.query(queryOptions);
    return result;
  }

  /// This method sends a `GET` request to the [endpoint] and returns the
  /// **QueryResult** response.
  ///
  /// Any errors encountered during the request are caught and a custom
  /// [NetworkException] is thrown.
  ///
  /// [query] holds any query parameters for the request.
  Future<QueryResult> getAll<T>(String query) async {
    final queryOptions = QueryOptions(document: gql(query));
    final result = await initialize().value.query(queryOptions);
    return result;
  }

  /// This method sends a `POST` request to the [endpoint] and returns the
  /// **QeryResult** response.
  ///
  /// Any errors encountered during the request are caught and a custom
  /// [Exception] is thrown.
  ///
  /// The [data] contains body for the request.
  ///
  Future<QueryResult> post<T>(String query, Json data) async {
    final mutationOptions =
        MutationOptions(document: gql(query), variables: data);
    final result = await initialize().value.mutate(mutationOptions);
    return result;
  }

  /// This method sends a `UPDATE` request to the [endpoint] and returns the
  /// **QeryResult** response.
  ///
  /// Any errors encountered during the request are caught and a custom
  /// [Exception] is thrown.
  ///
  /// The [data] contains body for the request.
  ///
  Future<QueryResult> update<T>(String query, Json data) async {
    final mutationOptions =
        MutationOptions(document: gql(query), variables: data);
    final result = await initialize().value.mutate(mutationOptions);
    return result;
  }

  /// This method sends a `DELETE` request to the [endpoint] and returns the
  /// **QeryResult** response.
  ///
  /// Any errors encountered during the request are caught and a custom
  /// [Exception] is thrown.
  ///
  /// The [data] contains body for the request.
  ///
  Future<QueryResult> delete<T>(String query, Json data) async {
    final mutationOptions = MutationOptions(
      document: gql(query),
      variables: data,
    );
    final result = await initialize().value.mutate(mutationOptions);
    return result;
  }
}
