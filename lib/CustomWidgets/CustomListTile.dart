import 'package:flutter/material.dart';
import 'package:random_user_application/Model/user_model.dart';
import 'package:random_user_application/Screens/details.dart';

class Customlisttile extends StatelessWidget {
  Customlisttile({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Details(details: user)),
      ),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(user.imageUrl)),
          title: Text(user.name),
          subtitle: Text(user.email),
        ),
      ),
    );
  }
}
