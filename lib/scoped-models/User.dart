import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_tutorial_udemy/models/User.dart';

class UserModel extends Model {
  User _authenticatedUser;

  void login(String email, String password) {
    _authenticatedUser = User(id: '123', email: email, password: password);
  }
}
