import 'package:qoute_app/data/entities/user_model.dart';

abstract class BaseAuthRepository {
  Future<UserData?> getUser();

  Future<dynamic> login({username, password});

  Future<dynamic> register({username, email, password, phone, address, image});
}
