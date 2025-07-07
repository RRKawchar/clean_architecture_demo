import 'package:equatable/equatable.dart';

class PopularProductEntity extends Equatable {
  final int? id;
  final String? name;
  final String? price;
  final String? regularPrice;
  final String? salePrice;
  final String? description;
  final String? shortDescription;
  final bool? inStock;
  final int? totalSales;
  final List<ProductCategory>? categories;
  final List<ProductImage>? images;

  const PopularProductEntity({
    required this.id,
    required this.name,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.description,
    this.shortDescription,
    this.inStock,
    this.totalSales,
    this.categories,
    this.images,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    price,
    regularPrice,
    salePrice,
    description,
    shortDescription,
    inStock,
    totalSales,
    categories,
    images,
  ];
}

class ProductCategory extends Equatable {
  final int? id;
  final String? name;


  const ProductCategory({
    required this.id,
    required this.name,

  });

  @override
  List<Object?> get props => [id, name];
}

class ProductImage extends Equatable {
  final int? id;
  final String? src;
  final String? name;

  const ProductImage({
    required this.id,
    required this.src,
    required this.name,
  });

  @override
  List<Object?> get props => [id, src, name];
}