class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: 'iphone',
      desc: "modile",
      price: 999,
      color: "#33505a",
      img:
          "https://www.aptronixindia.com/media/catalog/product/cache/b5906e3ec4e5a6ce87664252573b40fe/i/p/iphone_14_pro_deep_purple_pdp_image_position-1a_avail__en-in-removebg-preview.png",
    )
  ];
}

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
}
