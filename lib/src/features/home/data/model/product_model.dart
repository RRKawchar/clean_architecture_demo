
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductModel {
  ProductModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.permalink,
    required this.dateCreated,
    required this.dateCreatedGmt,
    required this.dateModified,
    required this.dateModifiedGmt,
    required this.type,
    required this.status,
    required this.featured,
    required this.catalogVisibility,
    required this.description,
    required this.shortDescription,
    required this.sku,
    required this.price,
    required this.regularPrice,
    required this.salePrice,
    required this.dateOnSaleFrom,
    required this.dateOnSaleFromGmt,
    required this.dateOnSaleTo,
    required this.dateOnSaleToGmt,
    required this.onSale,
    required this.purchasable,
    required this.totalSales,
    required this.virtual,
    required this.downloadable,
    required this.downloads,
    required this.downloadLimit,
    required this.downloadExpiry,
    required this.externalUrl,
    required this.buttonText,
    required this.taxStatus,
    required this.taxClass,
    required this.manageStock,
    required this.stockQuantity,
    required this.backorders,
    required this.backordersAllowed,
    required this.backordered,
    required this.lowStockAmount,
    required this.soldIndividually,
    required this.weight,
    required this.dimensions,
    required this.shippingRequired,
    required this.shippingTaxable,
    required this.shippingClass,
    required this.shippingClassId,
    required this.reviewsAllowed,
    required this.averageRating,
    required this.ratingCount,
    required this.upsellIds,
    required this.crossSellIds,
    required this.parentId,
    required this.purchaseNote,
    required this.categories,
    required this.tags,
    required this.images,
    required this.attributes,
    required this.defaultAttributes,
    required this.variations,
    required this.groupedProducts,
    required this.menuOrder,
    required this.priceHtml,
    required this.relatedIds,
    required this.metaData,
    required this.stockStatus,
    required this.hasOptions,
    required this.postPassword,
    required this.links,
  });

  final int? id;
  final String? name;
  final String? slug;
  final String? permalink;
  final DateTime? dateCreated;
  final DateTime? dateCreatedGmt;
  final DateTime? dateModified;
  final DateTime? dateModifiedGmt;
  final String? type;
  final String? status;
  final bool? featured;
  final String? catalogVisibility;
  final String? description;
  final String? shortDescription;
  final String? sku;
  final String? price;
  final String? regularPrice;
  final String? salePrice;
  final dynamic dateOnSaleFrom;
  final dynamic dateOnSaleFromGmt;
  final dynamic dateOnSaleTo;
  final dynamic dateOnSaleToGmt;
  final bool? onSale;
  final bool? purchasable;
  final int? totalSales;
  final bool? virtual;
  final bool? downloadable;
  final List<dynamic> downloads;
  final int? downloadLimit;
  final int? downloadExpiry;
  final String? externalUrl;
  final String? buttonText;
  final String? taxStatus;
  final String? taxClass;
  final bool? manageStock;
  final dynamic stockQuantity;
  final String? backorders;
  final bool? backordersAllowed;
  final bool? backordered;
  final dynamic lowStockAmount;
  final bool? soldIndividually;
  final String? weight;
  final Dimensions? dimensions;
  final bool? shippingRequired;
  final bool? shippingTaxable;
  final String? shippingClass;
  final int? shippingClassId;
  final bool? reviewsAllowed;
  final String? averageRating;
  final int? ratingCount;
  final List<dynamic> upsellIds;
  final List<dynamic> crossSellIds;
  final int? parentId;
  final String? purchaseNote;
  final List<Category> categories;
  final List<Category> tags;
  final List<Images> images;
  final List<Attribute> attributes;
  final List<dynamic> defaultAttributes;
  final List<int> variations;
  final List<dynamic> groupedProducts;
  final int? menuOrder;
  final String? priceHtml;
  final List<int> relatedIds;
  final List<MetaDatum> metaData;
  final String? stockStatus;
  final bool? hasOptions;
  final String? postPassword;
  final Links? links;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
  Map<String,dynamic> toJson()=> _$ProductModelToJson(this);

}

@JsonSerializable()
class Attribute {
  Attribute({
    required this.id,
    required this.name,
    required this.slug,
    required this.position,
    required this.visible,
    required this.variation,
    required this.options,
  });

  final int? id;
  final String? name;
  final String? slug;
  final int? position;
  final bool? visible;
  final bool? variation;
  final List<String> options;

  factory Attribute.fromJson(Map<String, dynamic> json)=> _$AttributeFromJson(json);
  Map<String,dynamic> toJson()=> _$AttributeToJson(this);

}

@JsonSerializable()
class Category {
  Category({
    required this.id,
    required this.name,
    required this.slug,
  });

  final int? id;
  final String? name;
  final String? slug;

  factory Category.fromJson(Map<String, dynamic> json)=> _$CategoryFromJson(json);
  Map<String,dynamic> toJson() =>_$CategoryToJson(this);

}


@JsonSerializable()
class Dimensions {
  Dimensions({
    required this.length,
    required this.width,
    required this.height,
  });

  final String? length;
  final String? width;
  final String? height;


  factory Dimensions.fromJson(Map<String, dynamic> json)=> _$DimensionsFromJson(json);
  Map<String,dynamic> toJson() =>_$DimensionsToJson(this);

}


@JsonSerializable()
class Images {
  Images({
    required this.id,
    required this.dateCreated,
    required this.dateCreatedGmt,
    required this.dateModified,
    required this.dateModifiedGmt,
    required this.src,
    required this.name,
    required this.alt,
  });

  final int? id;
  final DateTime? dateCreated;
  final DateTime? dateCreatedGmt;
  final DateTime? dateModified;
  final DateTime? dateModifiedGmt;
  final String? src;
  final String? name;
  final String? alt;

  factory Images.fromJson(Map<String, dynamic> json)=> _$ImagesFromJson(json);
  Map<String,dynamic> toJson() =>_$ImagesToJson(this);

}

@JsonSerializable(explicitToJson: true)
class Links {
  Links({
    required this.self,
    required this.collection,
  });

  final List<Collection> self;
  final List<Collection> collection;


  factory Links.fromJson(Map<String, dynamic> json)=> _$LinksFromJson(json);
  Map<String,dynamic> toJson() =>_$LinksToJson(this);


}

@JsonSerializable()
class Collection {
  Collection({
    required this.href,
  });

  final String? href;

  factory Collection.fromJson(Map<String, dynamic> json)=> _$CollectionFromJson(json);
  Map<String,dynamic> toJson() =>_$CollectionToJson(this);


}

@JsonSerializable()
class MetaDatum {
  MetaDatum({
    required this.id,
    required this.key,
    required this.value,
  });

  final int? id;
  final String? key;
  final dynamic value;

  factory MetaDatum.fromJson(Map<String, dynamic> json)=> _$MetaDatumFromJson(json);
  Map<String,dynamic> toJson() =>_$MetaDatumToJson(this);


}
@JsonSerializable()
class PurpleValue {
  PurpleValue({
    required this.name,
    required this.titleFormat,
    required this.descriptionEnable,
    required this.description,
    required this.type,
    required this.display,
    required this.position,
    required this.required,
    required this.restrictions,
    required this.restrictionsType,
    required this.adjustPrice,
    required this.priceType,
    required this.price,
    required this.min,
    required this.max,
    required this.options,
  });

  final String? name;
  final String? titleFormat;
  final int? descriptionEnable;
  final String? description;
  final String? type;
  final String? display;
  final int? position;
  final int? required;
  final int? restrictions;
  final String? restrictionsType;
  final int? adjustPrice;
  final String? priceType;
  final String? price;
  final int? min;
  final int? max;
  final List<Option> options;

  factory PurpleValue.fromJson(Map<String, dynamic> json)=> _$PurpleValueFromJson(json);
  Map<String,dynamic> toJson() =>_$PurpleValueToJson(this);


}

@JsonSerializable()
class Option {
  Option({
    required this.label,
    required this.price,
    required this.image,
    required this.priceType,
  });

  final String? label;
  final String? price;
  final String? image;
  final String? priceType;

  factory Option.fromJson(Map<String, dynamic> json)=> _$OptionFromJson(json);
  Map<String,dynamic> toJson() =>_$OptionToJson(this);


}

@JsonSerializable()
class FluffyValue {
  FluffyValue({
    required this.the10707,
    required this.the8141,
    required this.prodFeaturedImg,
    required this.prodDealImg,
    required this.offerBadgeText,
    required this.prodDealDate,
    required this.prodDealText,
    required this.discPercentOnoff,
    required this.productStBgColor,
    required this.productDisBgColor,
    required this.productImgBgColor,
    required this.the10736,
    required this.the0,
    required this.time,
    required this.fonts,
    required this.icons,
    required this.dynamicElementsIds,
    required this.status,
    required this.css,
    required this.the8142,
  });

  final The10707? the10707;
  final The10707? the8141;
  final ProdImg? prodFeaturedImg;
  final ProdImg? prodDealImg;
  final String? offerBadgeText;
  final String? prodDealDate;
  final String? prodDealText;
  final String? discPercentOnoff;
  final String? productStBgColor;
  final String? productDisBgColor;
  final String? productImgBgColor;
  final The10707? the10736;
  final String? the0;
  final int? time;
  final List<dynamic> fonts;
  final List<dynamic> icons;
  final List<dynamic> dynamicElementsIds;
  final String? status;
  final String? css;
  final The10707? the8142;

  factory FluffyValue.fromJson(Map<String, dynamic> json)=> _$FluffyValueFromJson(json);
  Map<String,dynamic> toJson() =>_$FluffyValueToJson(this);


}

@JsonSerializable()
class ProdImg {
  ProdImg({
    required this.url,
    required this.id,
    required this.width,
    required this.height,
    required this.thumbnail,
    required this.alt,
    required this.title,
    required this.description,
  });

  final String? url;
  final String? id;
  final String? width;
  final String? height;
  final String? thumbnail;
  final String? alt;
  final String? title;
  final String? description;

  factory ProdImg.fromJson(Map<String, dynamic> json)=> _$ProdImgFromJson(json);
  Map<String,dynamic> toJson() =>_$ProdImgToJson(this);


}

@JsonSerializable()
class The10707 {
  The10707({
    required this.videoType,
    required this.uploadVideoId,
    required this.uploadVideoUrl,
    required this.youtubeUrl,
    required this.vimeoUrl,
    required this.autoplay,
    required this.videoSize,
    required this.videoControl,
    required this.hideGalleryImg,
    required this.hideInformation,
    required this.audioStatus,
  });

  final String? videoType;
  final String? uploadVideoId;
  final String? uploadVideoUrl;
  final String? youtubeUrl;
  final String? vimeoUrl;
  final String? autoplay;
  final String? videoSize;
  final String? videoControl;
  final String? hideGalleryImg;
  final String? hideInformation;
  final String? audioStatus;

  factory The10707.fromJson(Map<String, dynamic> json)=> _$The10707FromJson(json);
  Map<String,dynamic> toJson() =>_$The10707ToJson(this);

}
