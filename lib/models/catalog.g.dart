// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Catalog _$CatalogFromJson(Map<String, dynamic> json) => Catalog(
      (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogToJson(Catalog instance) => <String, dynamic>{
      'items': instance.items,
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as int,
      name: json['name'] as String,
      desc: json['desc'] as String,
      price: json['price'] as num,
      color: json['color'] as String,
      img: json['img'] as String,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'desc': instance.desc,
      'price': instance.price,
      'color': instance.color,
      'img': instance.img,
    };
