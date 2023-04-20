// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPage();
}
class _LoginPage extends State<LoginPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:SafeArea(
        child: Center(
          child: Column(
           
            children: [
            //Greeting Texts
              const SizedBox(
                  height: 25,
                ),
            const Text("Hello Again!",
            style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 24,

            ),
            ),
            const SizedBox(
              height: 10,
            ),
             const Text(
                  "Its Nice to have you back!",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                  const SizedBox(
                  height: 20,
                ),
            //Username Textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(
                      color: Colors.white
                    ),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left:20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),
            //Password Textfield
            SizedBox(
              height: 10,
            ),
               Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
            //Log in Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                  ),
                  child: const Center(
                    child: Text(
                      "Hello"
                    ),
                  ),
                ),
              )
            //Not a member? register.
            ],
          ),
        ),
      )
    );
  }
}