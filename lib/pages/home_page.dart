import 'dart:convert';

import 'package:first_app/models/catalog.dart';
import 'package:first_app/pages/home_detail_page.dart';
import 'package:first_app/utils/MyRoutes.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
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
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          title: const Text("Catalog App"),
          textTheme: Theme.of(context).textTheme,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        ),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
          backgroundColor:
              Theme.of(context).buttonTheme.colorScheme?.background,
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.cartRoute);
          },
          child: Icon(
            CupertinoIcons.cart,
          ),
        ),
        body: SafeArea(
            child: Container(
          padding: const EdgeInsets.all(32),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CatalogHeader(),
            const SizedBox(
              height: 16,
            ),
            if (catalog != null && catalog!.items.isNotEmpty)
              CatalogList(catalog: catalog!)
            else
              Center(child: const CircularProgressIndicator()),
          ]),
        )));
  }

  Future<Catalog> loadData() async {
    await Future.delayed(Duration(seconds: 1));
    var json = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(json);
    return Catalog.fromJson(decodedData);
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Catalog App",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: MyTheme.darkBluishColor),
          ),
          Text(
            "Trending products",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: MyTheme.darkBluishColor,
            ),
          )
        ]);
  }
}

class CatalogList extends StatelessWidget {
  late Catalog catalog;

  CatalogList({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 8,
          );
        },
        shrinkWrap: true,
        itemCount: catalog.items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        HomeDetailPage(catalog: catalog.items[index]))),
            child: ListItem(
              item: catalog.items[index],
            ),
          );
        },
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  late Item item;
  ListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Hero(
                tag: Key(item.id.toString()),
                child: ItemImage(
                  image: item.img,
                ),
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      item.name,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      item.desc,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      buttonPadding: const EdgeInsets.only(left: 0.0),
                      children: [
                        Text(
                          "\$${item.price}",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold
                              color: Theme.of(context).textTheme),
                        ),
                        TextButton(
                            onPressed: () => {},
                            child: Padding(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Text(
                                "Add to cart",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Theme.of(context).highlightColor),
                                shape: MaterialStateProperty.all(
                                    StadiumBorder()))),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class ItemImage extends StatelessWidget {
  final String image;

  const ItemImage({super.key, required String this.image});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: MyTheme.creamColor, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Image.network(
          image,
          fit: BoxFit.cover, // Maintain aspect ratio
        ),
      ),
    );
  }
}
