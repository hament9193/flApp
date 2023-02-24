import 'package:flutter/material.dart';
import 'package:first_app/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Image.network(item.img),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: TextButton(
          onPressed: () {},
          child: Text('Buy \$${item.price}'),
        ),
      ),
    );
  }
}
