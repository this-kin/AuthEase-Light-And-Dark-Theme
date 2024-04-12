import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/data/entities/blog_model.dart';
import 'package:qoute_app/domain/repositories/base_crud_repository.dart';
import 'package:qoute_app/presentation/providers/states/future_state.dart';

class BlogStateNotifier extends StateNotifier<FutureState> {
  final Ref _ref;
  final BaseCrudRepository _repository;
  BlogStateNotifier(Ref ref, BaseCrudRepository repository)
      : _ref = ref,
        _repository = repository,
        super(const FutureState.idle());

  Future<void> create({String? title, subtitle, body}) async {
    state = const FutureState.loading();
    try {
      final model = BlogModel(
        body: body,
        title: title,
        subtitle: subtitle,
        dateCreated: DateTime.now().toString(),
      );
      final result = await _repository.createBlog(model);
      state = FutureState.data(data: result);
    } catch (e) {
      state = FutureState.failed(reason: e.toString());
    }
  }

  Future<void> update({String? id, title, subtitle, body}) async {
    state = const FutureState.loading();
    try {
      final model = BlogModel(
        id: id,
        body: body,
        title: title,
        subtitle: subtitle,
      );
      final result = await _repository.updateBlog(model);
      state = FutureState.data(data: result);
    } catch (e) {
      state = FutureState.failed(reason: e.toString());
    }
  }

  Future<void> delete({String? blogId}) async {
    state = const FutureState.loading();
    try {
      final result = await _repository.deleteBlog(blogId);
      state = FutureState.data(data: result);
    } catch (e) {
      state = FutureState.failed(reason: e.toString());
    }
  }
}
