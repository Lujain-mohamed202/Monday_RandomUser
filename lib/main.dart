import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user_application/Provider/user_provider.dart';
import 'package:random_user_application/Screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        home: const Homepage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
