import 'package:flutter/foundation.dart';
import 'package:random_user_application/Model/all_users_model.dart';
import 'package:random_user_application/Service/user_service.dart';

class UserProvider extends ChangeNotifier {
  Users? users;
  Future<void> requestuser() async {
    users = await UserService.getusers();
    notifyListeners();
  }
}
