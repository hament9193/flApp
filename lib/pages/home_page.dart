import 'dart:convert';

import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, this.title = 'Flutter Demo Home Page'});
  final String title;

  @override
  State<HomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<HomePage> {
  Catalog? catalog = null;

  @override
  void initState() {
    super.initState();

    loadData().then((catalog) {
      this.catalog = catalog;
      setState(
        () {
          this.catalog = catalog;
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Catalog App"),
        ),
        drawer: MyDrawer(),
        body: (catalog != null && catalog!.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: catalog?.items.length ?? 0,
                itemBuilder: (context, index) {
                  return ItemWidget(item: catalog!.items[index]);
                },
              )
            : Center(child: CircularProgressIndicator()));
  }

  Future<Catalog> loadData() async {
    await Future.delayed(Duration(seconds: 6));
    var json = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(json);
    return Catalog.fromJson(decodedData);
  }
}
