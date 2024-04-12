import 'package:flutter/foundation.dart';
import 'package:qoute_app/core/typedef.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:qoute_app/constants/api_constants.dart';

class GraphqlService {
  ValueNotifier<GraphQLClient> initialize() {
    HttpLink? httpLink;
    httpLink ??= HttpLink(ApiConstants.baseUrl);
    final ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
          link: httpLink, cache: GraphQLCache(store: InMemoryStore())),
    );

    return client;
  }

  Future<QueryResult> get<T>(String query) async {
    final client = initialize();
    final queryOptions = QueryOptions(document: gql(query));
    final result = await client.value.query(queryOptions);
    return result;
  }

  Future<QueryResult> getAll<T>(String query) async {
    final queryOptions = QueryOptions(
      document: gql(query),
      variables: {"nRepositories": 50},
    );
    final result = await initialize().value.query(queryOptions);
    return result;
  }

  Future<QueryResult> post<T>(String query, Json data) async {
    final mutationOptions = MutationOptions(
      document: gql(query),
      variables: data,
    );
    final result = await initialize().value.mutate(mutationOptions);
    return result;
  }

  Future<QueryResult> update<T>(String query, Json data) async {
    final mutationOptions = MutationOptions(
      document: gql(query),
      variables: data,
    );
    final result = await initialize().value.mutate(mutationOptions);
    return result;
  }

  Future<QueryResult> delete<T>(String query, Json data) async {
    final mutationOptions = MutationOptions(
      document: gql(query),
      variables: data,
    );
    final result = await initialize().value.mutate(mutationOptions);
    return result;
  }
}
