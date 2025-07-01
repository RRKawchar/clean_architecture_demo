// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'p_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PModel _$PModelFromJson(Map<String, dynamic> json) => PModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
  permalink: json['permalink'] as String,
  price: json['price'] as String?,
  regular_price: json['regular_price'] as String?,
  sale_price: json['sale_price'] as String?,
  on_sale: json['on_sale'] as bool?,
  description: json['description'] as String?,
  short_description: json['short_description'] as String?,
  in_stock: json['in_stock'] as bool?,
  total_sales: (json['total_sales'] as num?)?.toInt(),
  price_html: json['price_html'] as String?,
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => PCategory.fromJson(e as Map<String, dynamic>))
      .toList(),
  images: (json['images'] as List<dynamic>?)
      ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PModelToJson(PModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'permalink': instance.permalink,
  'price': instance.price,
  'regular_price': instance.regular_price,
  'sale_price': instance.sale_price,
  'on_sale': instance.on_sale,
  'description': instance.description,
  'short_description': instance.short_description,
  'in_stock': instance.in_stock,
  'total_sales': instance.total_sales,
  'price_html': instance.price_html,
  'categories': instance.categories?.map((e) => e.toJson()).toList(),
  'images': instance.images?.map((e) => e.toJson()).toList(),
};
