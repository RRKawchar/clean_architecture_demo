import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
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
  final List<ProductCategory>? categories;
  final List<ProductImage>? images;

  const ProductEntity({
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

  @override
  List<Object?> get props => [
    id,
    name,
    slug,
    permalink,
    price,
    regularPrice,
    salePrice,
    onSale,
    description,
    shortDescription,
    inStock,
    totalSales,
    priceHtml,
    categories,
    images,
  ];
}

class ProductCategory extends Equatable {
  final int id;
  final String name;
  final String slug;

  const ProductCategory({
    required this.id,
    required this.name,
    required this.slug,
  });

  @override
  List<Object?> get props => [id, name, slug];
}

class ProductImage extends Equatable {
  final int id;
  final String src;
  final String? name;

  const ProductImage({
    required this.id,
    required this.src,
    this.name,
  });

  @override
  List<Object?> get props => [id, src, name];
}