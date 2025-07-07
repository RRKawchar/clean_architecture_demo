import 'package:practice_demo01/src/features/product/domain/entities/popular_product_entity.dart';

class PopularProductModel extends PopularProductEntity {
  const PopularProductModel({
    required int id,
    required String name,
    required String price,
    required String salePrice,
    required int totalSales,
    required String regularPrice,
    required String description,
    required bool inStock,
    required String shortDescription,
    required List<PopularProductCategory> categories,
    required List<PopularProductImage> images,
  }) : super(
         id: id,
         name: name,
         price: price,
         salePrice: salePrice,
         totalSales: totalSales,
         regularPrice: regularPrice,
         description: description,
         inStock: inStock,
         shortDescription: shortDescription,
         categories: categories,
         images: images,
       );

  factory PopularProductModel.fromJson(Map<String, dynamic> json) {
    return PopularProductModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? "",
      price: json['price'] ?? "",
      salePrice: json['sale_price'] ?? "",
      totalSales: json['total_sales'] ?? "",
      regularPrice: json['regular_price'] ?? "",
      description: json['description'] ?? "",
      inStock: json['stock_quantity'] ?? false,
      shortDescription: json['short_description'] ?? "",
      categories: json['categories'] != null
          ? (json['categories'] as List<dynamic>)
                .map((e) => PopularProductCategory.fromJson(e))
                .toList()
          : [],
      images: json['images'] != null
          ? (json['images'] as List<dynamic>)
                .map((e) => PopularProductImage.fromJson(e))
                .toList()
          : [],
    );
  }
}

class PopularProductCategory extends ProductCategory {
  const PopularProductCategory({required int id, required String name})
    : super(id: id, name: name);

  factory PopularProductCategory.fromJson(Map<String, dynamic> json) {
    return PopularProductCategory(id: json['id'], name: json['name']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }
}

class PopularProductImage extends ProductImage {
  const PopularProductImage({
    required int id,
    required String src,
    required String name,
  }) : super(id: id, src: src, name: name);

  factory PopularProductImage.fromJson(Map<String, dynamic> json) {
    return PopularProductImage(
      id: json['id'] ?? "",
      src: json['src'] ?? "",
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'src': src, 'name': name};
  }
}
