import 'dart:convert';
import 'package:qoute_app/constants/api_constants.dart';
import 'package:qoute_app/data/entities/user_model.dart';
import 'package:qoute_app/domain/networking/api_service.dart';
import 'package:qoute_app/domain/repositories/base_auth_repository.dart';

class AuthRepository extends BaseAuthRepository {
  final ApiService _apiService;

  AuthRepository(this._apiService);
  @override
  Future<UserData?> getUser() async {
    return await _apiService.getData(
      endpoint: ApiConstants.profile,
      params: {},
      acceptToken: true,
      result: (result) {
        final response = UserData.fromJson(result);
        return response;
      },
    );
  }

  @override
  Future<String?> login({String? username, password}) async {
    return await _apiService.postData(
      endpoint: ApiConstants.login,
      params: {
        "username": username,
        "password": password,
      },
      acceptToken: false,
      result: (result) {
        final response = result['token'];
        return response;
      },
    );
  }

  @override
  Future<String?> register(
      {String? username, email, password, phone, address, image}) async {
    return await _apiService.postData(
      endpoint: ApiConstants.register,
      params: {
        "username": username,
        "email": email,
        "phone": phone,
        "image": image,
        "address": address,
        "password": password,
      },
      acceptToken: false,
      result: (result) {
        return jsonEncode(result);
      },
    );
  }
}
