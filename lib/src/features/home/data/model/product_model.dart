import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:practice_demo01/src/features/home/data/model/p_category.dart';

import 'dimensions.dart';
import 'image_model.dart';

part 'product_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductModel {
  final int id;
  final String name;
  final String slug;
  final String permalink;
  final String? price;
  final String? regular_price;
  final String? sale_price;
  final bool? on_sale;
  final String? description;
  final String? short_description;
  final bool? in_stock;
  final int? total_sales;
  final String? price_html;
  final List<PCategory>? categories;
  final List<ImageModel>? images;
  final Dimensions? dimensions;

  ProductModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.permalink,
    this.price,
    this.regular_price,
    this.sale_price,
    this.on_sale,
    this.description,
    this.short_description,
    this.in_stock,
    this.total_sales,
    this.price_html,
    this.categories,
    this.images,
    this.dimensions,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
