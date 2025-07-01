// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'p_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PCategory _$PCategoryFromJson(Map<String, dynamic> json) => PCategory(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
);

Map<String, dynamic> _$PCategoryToJson(PCategory instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
};
