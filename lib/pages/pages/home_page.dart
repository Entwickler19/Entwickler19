import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/utilities/routes.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Flutter";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of $name"),
        ),
      ),
      drawer: Drawer(backgroundColor: Colors.amber),
      bottomNavigationBar: BackButton(
        color: Colors.amber,
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.loginRoute);
        },
      ),
    );
  }
}
