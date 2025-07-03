import '../../domain/entities/product_entity.dart';

class PModel {
  final int id;
  final String name;
  final String slug;
  final String permalink;
  final String? price;
  final String? regularPrice;
  final String? salePrice;
  final bool? onSale;
  final String? description;
  final String? shortDescription;
  final bool? inStock;
  final int? totalSales;
  final String? priceHtml;
  final List<ProductCategoryModel>? categories;
  final List<ProductImageModel>? images;

  const PModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.permalink,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.onSale,
    this.description,
    this.shortDescription,
    this.inStock,
    this.totalSales,
    this.priceHtml,
    this.categories,
    this.images,
  });

  factory PModel.fromJson(Map<String, dynamic> json) => PModel(
    id: json['id'],
    name: json['name'],
    slug: json['slug'],
    permalink: json['permalink'],
    price: json['price'],
    regularPrice: json['regular_price'],
    salePrice: json['sale_price'],
    onSale: json['on_sale'],
    description: json['description'],
    shortDescription: json['short_description'],
    inStock: json['in_stock'],
    totalSales: json['total_sales'],
    priceHtml: json['price_html'],
    categories: (json['categories'] as List?)?.map((e) => ProductCategoryModel.fromJson(e)).toList(),
    images: (json['images'] as List?)?.map((e) => ProductImageModel.fromJson(e)).toList(),
  );

  ProductEntity toEntity() => ProductEntity(
    id: id,
    name: name,
    slug: slug,
    permalink: permalink,
    price: price,
    regularPrice: regularPrice,
    salePrice: salePrice,
    onSale: onSale,
    description: description,
    shortDescription: shortDescription,
    inStock: inStock,
    totalSales: totalSales,
    priceHtml: priceHtml,
    categories: categories?.map((e) => e.toEntity()).toList(),
    images: images?.map((e) => e.toEntity()).toList(),
  );
}

class ProductCategoryModel {
  final int id;
  final String name;
  final String slug;

  const ProductCategoryModel({
    required this.id,
    required this.name,
    required this.slug,
  });

  factory ProductCategoryModel.fromJson(Map<String, dynamic> json) => ProductCategoryModel(
    id: json['id'],
    name: json['name'],
    slug: json['slug'],
  );

  ProductCategory toEntity() => ProductCategory(id: id, name: name, slug: slug);
}

class ProductImageModel {
  final int id;
  final String src;
  final String? name;

  const ProductImageModel({
    required this.id,
    required this.src,
    this.name,
  });

  factory ProductImageModel.fromJson(Map<String, dynamic> json) => ProductImageModel(
    id: json['id'],
    src: json['src'],
    name: json['name'],
  );

  ProductImage toEntity() => ProductImage(id: id, src: src, name: name);
}