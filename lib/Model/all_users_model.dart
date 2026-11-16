import 'user_model.dart';

class Users {
  final List<UserModel> users;
  Users({required this.users});
  factory Users.fromJson(Map<String, dynamic> json) {
    final tempList = json["results"]
        .map<UserModel>(
          (result) => UserModel(
            name:
                "${result["name"]["first"]}"
                "${result["name"]["last"]}",
            email: result["email"],
            phone: result["phone"],
            address:
                "${result["location"]["street"]["name"]}"
                "${result["location"]["city"]}",
            age: result["dob"]["age"],
            imageUrl: result["picture"]["large"],
          ),
        )
        .toList();
    return Users(users: tempList);
  }
}
