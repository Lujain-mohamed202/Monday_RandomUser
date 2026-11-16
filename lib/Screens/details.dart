import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user_application/CustomWidgets/CustomCard.dart';
import 'package:random_user_application/Model/user_model.dart';
import 'package:random_user_application/Provider/user_provider.dart';

class Details extends StatelessWidget {
  Details({super.key, required this.details});
  UserModel details;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: .center,
          mainAxisAlignment: .center,
          children: [Customcard(details: details)],
        ),
      ),
    );
  }
}
