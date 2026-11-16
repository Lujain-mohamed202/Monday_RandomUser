import 'package:dio/dio.dart';
import 'package:random_user_application/Model/all_users_model.dart';

class UserService {
  static Dio dio = Dio();

  static Future<Users> getusers() async {
    try {
      Response response = await dio.get(
        "https://randomuser.me/api/?results=50",
      );
      return Users.fromJson(response.data);
    } on DioException catch (dioexception) {
      throw Exception(dioexception.message);
    } catch (otherException) {
      throw Exception("other Exception ${otherException.toString()}");
    }
  }
}
