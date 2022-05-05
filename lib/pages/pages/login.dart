import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/utilities/routes.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/dubai.jpg",
                fit: BoxFit.cover,
                height: 310.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome to Dubai",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.amber[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    ElevatedButton(
                      child: Text("Login",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          )),
                      style: TextButton.styleFrom(minimumSize: Size(200, 44)),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
