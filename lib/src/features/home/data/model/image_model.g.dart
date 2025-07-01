// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel(
  id: (json['id'] as num).toInt(),
  src: json['src'] as String,
  name: json['name'] as String,
  alt: json['alt'] as String,
);

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'src': instance.src,
      'name': instance.name,
      'alt': instance.alt,
    };
