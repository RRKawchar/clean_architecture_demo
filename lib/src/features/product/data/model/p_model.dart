import '../../domain/entities/product_entity.dart'; // Import the domain entity

class PModel extends ProductEntity {
  const PModel({
    required int id,
    required String name,
    required String slug,
    required String permalink,
    String? price,
    String? regularPrice,
    String? salePrice,
    bool? onSale,
    String? description,
    String? shortDescription,
    bool? inStock,
    int? totalSales,
    String? priceHtml,
    List<ProductCategoryModel>? categories,
    List<ProductImageModel>? images,
  }) : super(
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
    categories: categories,
    images: images,
  );

  factory PModel.fromJson(Map<String, dynamic> json) {
    return PModel(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
      permalink: json['permalink'] as String,
      price: json['price'] as String?,
      regularPrice: json['regular_price'] as String?,
      salePrice: json['sale_price'] as String?,
      onSale: json['on_sale'] as bool?,
      description: json['description'] as String?,
      shortDescription: json['short_description'] as String?,
      inStock: json['in_stock'] as bool?,
      totalSales: json['total_sales'] as int?,
      priceHtml: json['price_html'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => ProductCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
  // // Method to convert model to entity if needed, though often models directly extend entities.
  // ProductEntity toEntity() {
  //   return ProductEntity(
  //     id: id,
  //     name: name,
  //     slug: slug,
  //     permalink: permalink,
  //     price: price,
  //     regularPrice: regularPrice,
  //     salePrice: salePrice,
  //     onSale: onSale,
  //     description: description,
  //     shortDescription: shortDescription,
  //     inStock: inStock,
  //     totalSales: totalSales,
  //     priceHtml: priceHtml,
  //     categories: categories?.map((e) => e.toEntity()).toList(),
  //     images: images?.map((e) => e.toEntity()).toList(),
  //   );
  // }
}

class ProductCategoryModel extends ProductCategory {
  const ProductCategoryModel({
    required int id,
    required String name,
    required String slug,
  }) : super(id: id, name: name, slug: slug);

  factory ProductCategoryModel.fromJson(Map<String, dynamic> json) {
    return ProductCategoryModel(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
    );
  }

  ProductCategory toEntity() {
    return ProductCategory(id: id, name: name, slug: slug);
  }
}

class ProductImageModel extends ProductImage {
  const ProductImageModel({
    required int id,
    required String src,
    String? name,
  }) : super(id: id, src: src, name: name);

  factory ProductImageModel.fromJson(Map<String, dynamic> json) {
    return ProductImageModel(
      id: json['id'] as int,
      src: json['src'] as String,
      name: json['name'] as String?,
    );
  }

  ProductImage toEntity() {
    return ProductImage(id: id, src: src, name: name);
  }
}