import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_app/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.title = 'Flutter Demo Home Page'});

  final String title;

  @override
  State<HomePage> createState() => MyHomePageStateNew();
}

class MyHomePageStateNew extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Catalog App"),
        ),
        drawer: MyDrawer(),
        body: Center(
          child: Column(
            children: const [
              Spacer(),
              Text('Home page'), // ← Example change.
              Spacer(),
            ],
          ),
        ));
  }
}
