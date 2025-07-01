import 'package:json_annotation/json_annotation.dart';

part 'p_category.g.dart';

@JsonSerializable()
class PCategory {
  final int id;
  final String name;
  final String slug;

  PCategory({
    required this.id,
    required this.name,
    required this.slug,
  });

  factory PCategory.fromJson(Map<String, dynamic> json) =>
      _$PCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$PCategoryToJson(this);
}
