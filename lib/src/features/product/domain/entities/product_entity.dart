class ProductEntity {
  final int id;
  final String name;
  final double price;
  final double regularPrice;
  final String imageUrl;
  final String description;
  final bool inStock;
  final List<String> categories;

  ProductEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.regularPrice,
    required this.imageUrl,
    required this.description,
    required this.inStock,
    required this.categories,
  });
}