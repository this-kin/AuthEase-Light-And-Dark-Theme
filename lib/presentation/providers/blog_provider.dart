import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/data/entities/blog_model.dart';
import 'package:qoute_app/data/repositories/crud_repository.dart';
import 'package:qoute_app/domain/networking/api_service.dart';
import 'package:qoute_app/domain/networking/graphql_service.dart';
import 'package:qoute_app/domain/repositories/base_crud_repository.dart';
import 'package:qoute_app/presentation/providers/blog_notifiers.dart';
import 'package:qoute_app/presentation/providers/states/future_state.dart';

//
final getAllBlogProvider =
    FutureProvider.autoDispose<List<BlogModel>>((ref) async {
  return ref.read(crudRepositoryProvider).getAllBlogs();
});

final getBlogProvider =
    FutureProvider.family<BlogModel, String>((ref, id) async {
  return ref.read(crudRepositoryProvider).getBlog(id);
});

final blogStateProvider =
    StateNotifierProvider<BlogStateNotifier, FutureState>((ref) {
  return BlogStateNotifier(ref, ref.read(crudRepositoryProvider));
});

final crudRepositoryProvider = Provider<BaseCrudRepository>((ref) {
  return CrudRepository(ref.read(_apiServiceProvider));
});

final _apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService(ref.read(_graphQlProvider));
});

final _graphQlProvider = Provider<GraphqlService>((ref) {
  return GraphqlService();
});
