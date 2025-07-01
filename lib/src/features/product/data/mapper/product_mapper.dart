import '../../../home/data/model/product_model.dart';
import '../../domain/entities/product_entity.dart';
import '../model/p_model.dart';

extension ProductModelExtensions on PModel {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      name: name,
      price: double.tryParse(price ?? '0') ?? 0.0,
      regularPrice: double.tryParse(regular_price ?? '0') ?? 0.0,
      imageUrl: images?.isNotEmpty == true ? images!.first.src : '',
      description: description ?? '',
      inStock: in_stock ?? false,
      categories: categories?.map((c) => c.name).toList() ?? [],
    );
  }
}