import 'package:flutter/material.dart';

import '../utils/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(this.context, MyRoutes.homeRoute);

      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(Object context) {
    return Material(
        color: Colors.white,
        child: Container(
          margin: EdgeInsetsDirectional.all(40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/img_login.png",
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Welcome $name",
                    style: const TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    )),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        onChanged: (value) => {name = value, setState(() {})},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "username is required";
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "password is required";
                          } else if (value.length < 6) {
                            return "minimum password length is 6.";
                          }
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 16),
                  child: InkWell(
                    onTap: () => moveToHome(this.context),
                    child: AnimatedContainer(
                      width: changeButton ? 50 : 150,
                      height: 50,
                      duration: Duration(seconds: 1),
                      alignment: Alignment.center,
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
