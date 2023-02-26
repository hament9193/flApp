import 'package:json_annotation/json_annotation.dart';

/// This allows the` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'catalog.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class Catalog {
  Catalog(this.items);
  List<Item> items;

  /// A necessary factory constructor for creating a new instance
  /// from a map. Pass the map to the generated `_$ModelFromJson()` constructor.
  /// The constructor is named after the source model class
  factory Catalog.fromJson(Map<String, dynamic> json) =>
      _$CatalogFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ModelToJson`.
  Map<String, dynamic> toJson() => _$CatalogToJson(this);
}

@JsonSerializable()
class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String img;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.img});

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
