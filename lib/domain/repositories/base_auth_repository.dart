import 'package:qoute_app/data/entities/user_model.dart';

abstract class BaseAuthRepository {
  Future<String?> login({String? username, password});

  Future<String?> register(
      {String? username, email, password, phone, address, image});

  Future<UserData?> getUser();
}
