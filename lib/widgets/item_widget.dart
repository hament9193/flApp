import 'package:flutter/material.dart';
import 'package:first_app/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.all(10),
      child: GridTile(
        header: Text(item.name),
        footer: Container(
          decoration: BoxDecoration(color: Colors.deepPurple),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Buy \$${item.price}',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        child: Padding(
            padding: EdgeInsets.all(16), child: Image.network(item.img)),
      ),
    );
  }
}
