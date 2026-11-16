import 'package:flutter/material.dart';
import 'package:random_user_application/Model/user_model.dart';

class Customcard extends StatelessWidget {
  UserModel details;
  Customcard({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 235, 228, 230).withValues(alpha: 0.1),
      width: 400,
      height: 400,
      child: Card(
        color: const Color.fromARGB(255, 255, 186, 209).withValues(alpha: 0.4),
        child: Column(
          spacing: 20,
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(details.imageUrl),
            ),
            Text(
              details.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email : "),
              subtitle: Text(details.email, style: TextStyle(fontSize: 15)),
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text("Address : "),
              subtitle: Text(details.address, style: TextStyle(fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }
}
