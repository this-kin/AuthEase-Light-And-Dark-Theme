import 'package:flutter/material.dart';
import 'package:qoute_app/data/entities/blog_model.dart';
import 'package:qoute_app/domain/networking/api_service.dart';
import 'package:qoute_app/domain/repositories/base_crud_repository.dart';

class CrudRepository extends BaseCrudRepository {
  final ApiService _apiService;

  CrudRepository(this._apiService);

  @override
  Future createBlog(BlogModel model) async {
    return await _apiService.postData(
      query: """
mutation createBlogPost(${model.title}: String!, ${model.subtitle}: String!, ${model.body}: String!) {
  createBlog(title: ${model.title}, subTitle: ${model.subtitle}, body: ${model.body}) {
    success
    blogPost {
      id
      title
      subTitle
      body
      dateCreated
    }
  }
}
""",
      param: model.toJson(),
      response: (response) {
        return response;
      },
    );
  }

  @override
  Future deleteBlog(String? blogId) async {
    return await _apiService.deleteData(
      param: {
        "blogId": blogId,
      },
      query: """mutation deleteBlogPost($blogId: String!) {
            deleteBlog(blogId: $blogId) {
            success
          }
        }
      """,
      response: (response) {},
    );
  }

  @override
  Future<List<BlogModel>> getAllBlogs() async {
    return await _apiService.getData(
      query: """
    query fetchAllBlogs {
        allBlogPosts {
          id
          title
          subTitle
          body
          dateCreated
        }
      }
    """,
      response: (response) {
        debugPrint("get posts $response");
        final articles = response["allBlogPosts"] as List;
        List<BlogModel> blogs = [];
        for (var i in articles) {
          final model = BlogModel.fromJson(i);
          blogs.add(model);
        }
        return blogs;
      },
    );
  }

  @override
  Future<BlogModel> getBlog(String? blogId) async {
    return await _apiService.getData(
      query: """
      query getBlog($blogId: String!) {
       blogPost(blogId: $blogId) {
        id
        title
        subTitle
        body
        dateCreated
      }
    }
      """,
      response: (response) {
        return BlogModel.fromJson(response);
      },
    );
  }

  @override
  Future<String> updateBlog(BlogModel model) async {
    return await _apiService.updateData(
      query: """
        mutation updateBlogPost(${model.id}: String!, ${model.title}: String!, ${model.subtitle}: String!, ${model.body}: String!) {
     updateBlog(blogId: ${model.id}, title: ${model.title}, subTitle: ${model.subtitle}, body: ${model.body}) {
        success
          blogPost {
            id
            title
            subTitle
            body
            dateCreated
      }
    }
}
""",
      param: model.toJson(),
      response: (response) {
        return response;
      },
    );
  }
}
