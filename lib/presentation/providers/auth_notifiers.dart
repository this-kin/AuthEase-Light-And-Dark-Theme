import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/domain/networking/api_service.dart';
import 'package:qoute_app/domain/networking/graphql_service.dart';
import 'package:qoute_app/data/repositories/crud_repository.dart';
import 'package:qoute_app/domain/repositories/base_crud_repository.dart';

final crudRepositoryProvider = Provider<BaseCrudRepository>((ref) {
  return CrudRepository(ref.read(_apiServiceProvider));
});

final _apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService(ref.read(_graphQlProvider));
});

final _graphQlProvider = Provider<GraphqlService>((ref) {
  return GraphqlService();
});
