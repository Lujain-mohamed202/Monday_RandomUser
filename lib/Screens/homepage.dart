import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user_application/CustomWidgets/CustomListTile.dart';
import 'package:random_user_application/Provider/user_provider.dart';

class Homepage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final Providerobject = context.read<UserProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Consumer<UserProvider>(
        builder: (context, value, child) {
          final data = value.users?.users;
          if (data == null) {
            value.requestuser();
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Customlisttile(user: data[index]);
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Providerobject.requestuser(),
        child: Icon(Icons.refresh),
      ),
    );
  }
}
