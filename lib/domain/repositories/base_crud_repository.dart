import 'package:qoute_app/data/entities/blog_model.dart';

abstract class BaseCrudRepository {
  Future deleteBlog(String? id);

  Future<BlogModel> createBlog(BlogModel model);

  Future<BlogModel> getBlog(String? id);

  Future<List<BlogModel>> getAllBlogs();

  Future<BlogModel> updateBlog(BlogModel model);
}
