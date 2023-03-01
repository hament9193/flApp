import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:first_app/models/catalog.dart';
import 'package:flutter/rendering.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  HomeDetailPage({super.key, required Item this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(
                    catalog.img,
                  )),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      catalog.name,
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      catalog.desc,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: MyTheme.darkBluishColor, fontSize: 12),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.all(18),
        children: [
          Text(
            "\$${catalog.price}",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.brown),
          ),
          TextButton(
              onPressed: () => {},
              child: Text(
                "Add to card",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(MyTheme.darkBluishColor),
                  shape: MaterialStateProperty.all(StadiumBorder()),
                  minimumSize: MaterialStatePropertyAll(Size(120, 40)))),
        ],
      ),
    );
  }
}
