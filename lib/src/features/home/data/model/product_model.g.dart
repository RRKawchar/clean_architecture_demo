// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  permalink: json['permalink'] as String?,
  dateCreated: json['dateCreated'] == null
      ? null
      : DateTime.parse(json['dateCreated'] as String),
  dateCreatedGmt: json['dateCreatedGmt'] == null
      ? null
      : DateTime.parse(json['dateCreatedGmt'] as String),
  dateModified: json['dateModified'] == null
      ? null
      : DateTime.parse(json['dateModified'] as String),
  dateModifiedGmt: json['dateModifiedGmt'] == null
      ? null
      : DateTime.parse(json['dateModifiedGmt'] as String),
  type: json['type'] as String?,
  status: json['status'] as String?,
  featured: json['featured'] as bool?,
  catalogVisibility: json['catalogVisibility'] as String?,
  description: json['description'] as String?,
  shortDescription: json['shortDescription'] as String?,
  sku: json['sku'] as String?,
  price: json['price'] as String?,
  regularPrice: json['regularPrice'] as String?,
  salePrice: json['salePrice'] as String?,
  dateOnSaleFrom: json['dateOnSaleFrom'],
  dateOnSaleFromGmt: json['dateOnSaleFromGmt'],
  dateOnSaleTo: json['dateOnSaleTo'],
  dateOnSaleToGmt: json['dateOnSaleToGmt'],
  onSale: json['onSale'] as bool?,
  purchasable: json['purchasable'] as bool?,
  totalSales: (json['totalSales'] as num?)?.toInt(),
  virtual: json['virtual'] as bool?,
  downloadable: json['downloadable'] as bool?,
  downloads: json['downloads'] as List<dynamic>,
  downloadLimit: (json['downloadLimit'] as num?)?.toInt(),
  downloadExpiry: (json['downloadExpiry'] as num?)?.toInt(),
  externalUrl: json['externalUrl'] as String?,
  buttonText: json['buttonText'] as String?,
  taxStatus: json['taxStatus'] as String?,
  taxClass: json['taxClass'] as String?,
  manageStock: json['manageStock'] as bool?,
  stockQuantity: json['stockQuantity'],
  backorders: json['backorders'] as String?,
  backordersAllowed: json['backordersAllowed'] as bool?,
  backordered: json['backordered'] as bool?,
  lowStockAmount: json['lowStockAmount'],
  soldIndividually: json['soldIndividually'] as bool?,
  weight: json['weight'] as String?,
  dimensions: json['dimensions'] == null
      ? null
      : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
  shippingRequired: json['shippingRequired'] as bool?,
  shippingTaxable: json['shippingTaxable'] as bool?,
  shippingClass: json['shippingClass'] as String?,
  shippingClassId: (json['shippingClassId'] as num?)?.toInt(),
  reviewsAllowed: json['reviewsAllowed'] as bool?,
  averageRating: json['averageRating'] as String?,
  ratingCount: (json['ratingCount'] as num?)?.toInt(),
  upsellIds: json['upsellIds'] as List<dynamic>,
  crossSellIds: json['crossSellIds'] as List<dynamic>,
  parentId: (json['parentId'] as num?)?.toInt(),
  purchaseNote: json['purchaseNote'] as String?,
  categories: (json['categories'] as List<dynamic>)
      .map((e) => Category.fromJson(e as Map<String, dynamic>))
      .toList(),
  tags: (json['tags'] as List<dynamic>)
      .map((e) => Category.fromJson(e as Map<String, dynamic>))
      .toList(),
  images: (json['images'] as List<dynamic>)
      .map((e) => Images.fromJson(e as Map<String, dynamic>))
      .toList(),
  attributes: (json['attributes'] as List<dynamic>)
      .map((e) => Attribute.fromJson(e as Map<String, dynamic>))
      .toList(),
  defaultAttributes: json['defaultAttributes'] as List<dynamic>,
  variations: (json['variations'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  groupedProducts: json['groupedProducts'] as List<dynamic>,
  menuOrder: (json['menuOrder'] as num?)?.toInt(),
  priceHtml: json['priceHtml'] as String?,
  relatedIds: (json['relatedIds'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  metaData: (json['metaData'] as List<dynamic>)
      .map((e) => MetaDatum.fromJson(e as Map<String, dynamic>))
      .toList(),
  stockStatus: json['stockStatus'] as String?,
  hasOptions: json['hasOptions'] as bool?,
  postPassword: json['postPassword'] as String?,
  links: json['links'] == null
      ? null
      : Links.fromJson(json['links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'permalink': instance.permalink,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'dateCreatedGmt': instance.dateCreatedGmt?.toIso8601String(),
      'dateModified': instance.dateModified?.toIso8601String(),
      'dateModifiedGmt': instance.dateModifiedGmt?.toIso8601String(),
      'type': instance.type,
      'status': instance.status,
      'featured': instance.featured,
      'catalogVisibility': instance.catalogVisibility,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'sku': instance.sku,
      'price': instance.price,
      'regularPrice': instance.regularPrice,
      'salePrice': instance.salePrice,
      'dateOnSaleFrom': instance.dateOnSaleFrom,
      'dateOnSaleFromGmt': instance.dateOnSaleFromGmt,
      'dateOnSaleTo': instance.dateOnSaleTo,
      'dateOnSaleToGmt': instance.dateOnSaleToGmt,
      'onSale': instance.onSale,
      'purchasable': instance.purchasable,
      'totalSales': instance.totalSales,
      'virtual': instance.virtual,
      'downloadable': instance.downloadable,
      'downloads': instance.downloads,
      'downloadLimit': instance.downloadLimit,
      'downloadExpiry': instance.downloadExpiry,
      'externalUrl': instance.externalUrl,
      'buttonText': instance.buttonText,
      'taxStatus': instance.taxStatus,
      'taxClass': instance.taxClass,
      'manageStock': instance.manageStock,
      'stockQuantity': instance.stockQuantity,
      'backorders': instance.backorders,
      'backordersAllowed': instance.backordersAllowed,
      'backordered': instance.backordered,
      'lowStockAmount': instance.lowStockAmount,
      'soldIndividually': instance.soldIndividually,
      'weight': instance.weight,
      'dimensions': instance.dimensions?.toJson(),
      'shippingRequired': instance.shippingRequired,
      'shippingTaxable': instance.shippingTaxable,
      'shippingClass': instance.shippingClass,
      'shippingClassId': instance.shippingClassId,
      'reviewsAllowed': instance.reviewsAllowed,
      'averageRating': instance.averageRating,
      'ratingCount': instance.ratingCount,
      'upsellIds': instance.upsellIds,
      'crossSellIds': instance.crossSellIds,
      'parentId': instance.parentId,
      'purchaseNote': instance.purchaseNote,
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'tags': instance.tags.map((e) => e.toJson()).toList(),
      'images': instance.images.map((e) => e.toJson()).toList(),
      'attributes': instance.attributes.map((e) => e.toJson()).toList(),
      'defaultAttributes': instance.defaultAttributes,
      'variations': instance.variations,
      'groupedProducts': instance.groupedProducts,
      'menuOrder': instance.menuOrder,
      'priceHtml': instance.priceHtml,
      'relatedIds': instance.relatedIds,
      'metaData': instance.metaData.map((e) => e.toJson()).toList(),
      'stockStatus': instance.stockStatus,
      'hasOptions': instance.hasOptions,
      'postPassword': instance.postPassword,
      'links': instance.links?.toJson(),
    };

Attribute _$AttributeFromJson(Map<String, dynamic> json) => Attribute(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  position: (json['position'] as num?)?.toInt(),
  visible: json['visible'] as bool?,
  variation: json['variation'] as bool?,
  options: (json['options'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$AttributeToJson(Attribute instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'position': instance.position,
  'visible': instance.visible,
  'variation': instance.variation,
  'options': instance.options,
};

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  slug: json['slug'] as String?,
);

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
};

Dimensions _$DimensionsFromJson(Map<String, dynamic> json) => Dimensions(
  length: json['length'] as String?,
  width: json['width'] as String?,
  height: json['height'] as String?,
);

Map<String, dynamic> _$DimensionsToJson(Dimensions instance) =>
    <String, dynamic>{
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
  id: (json['id'] as num?)?.toInt(),
  dateCreated: json['dateCreated'] == null
      ? null
      : DateTime.parse(json['dateCreated'] as String),
  dateCreatedGmt: json['dateCreatedGmt'] == null
      ? null
      : DateTime.parse(json['dateCreatedGmt'] as String),
  dateModified: json['dateModified'] == null
      ? null
      : DateTime.parse(json['dateModified'] as String),
  dateModifiedGmt: json['dateModifiedGmt'] == null
      ? null
      : DateTime.parse(json['dateModifiedGmt'] as String),
  src: json['src'] as String?,
  name: json['name'] as String?,
  alt: json['alt'] as String?,
);

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
  'id': instance.id,
  'dateCreated': instance.dateCreated?.toIso8601String(),
  'dateCreatedGmt': instance.dateCreatedGmt?.toIso8601String(),
  'dateModified': instance.dateModified?.toIso8601String(),
  'dateModifiedGmt': instance.dateModifiedGmt?.toIso8601String(),
  'src': instance.src,
  'name': instance.name,
  'alt': instance.alt,
};

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
  self: (json['self'] as List<dynamic>)
      .map((e) => Collection.fromJson(e as Map<String, dynamic>))
      .toList(),
  collection: (json['collection'] as List<dynamic>)
      .map((e) => Collection.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
  'self': instance.self.map((e) => e.toJson()).toList(),
  'collection': instance.collection.map((e) => e.toJson()).toList(),
};

Collection _$CollectionFromJson(Map<String, dynamic> json) =>
    Collection(href: json['href'] as String?);

Map<String, dynamic> _$CollectionToJson(Collection instance) =>
    <String, dynamic>{'href': instance.href};

MetaDatum _$MetaDatumFromJson(Map<String, dynamic> json) => MetaDatum(
  id: (json['id'] as num?)?.toInt(),
  key: json['key'] as String?,
  value: json['value'],
);

Map<String, dynamic> _$MetaDatumToJson(MetaDatum instance) => <String, dynamic>{
  'id': instance.id,
  'key': instance.key,
  'value': instance.value,
};

PurpleValue _$PurpleValueFromJson(Map<String, dynamic> json) => PurpleValue(
  name: json['name'] as String?,
  titleFormat: json['titleFormat'] as String?,
  descriptionEnable: (json['descriptionEnable'] as num?)?.toInt(),
  description: json['description'] as String?,
  type: json['type'] as String?,
  display: json['display'] as String?,
  position: (json['position'] as num?)?.toInt(),
  required: (json['required'] as num?)?.toInt(),
  restrictions: (json['restrictions'] as num?)?.toInt(),
  restrictionsType: json['restrictionsType'] as String?,
  adjustPrice: (json['adjustPrice'] as num?)?.toInt(),
  priceType: json['priceType'] as String?,
  price: json['price'] as String?,
  min: (json['min'] as num?)?.toInt(),
  max: (json['max'] as num?)?.toInt(),
  options: (json['options'] as List<dynamic>)
      .map((e) => Option.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PurpleValueToJson(PurpleValue instance) =>
    <String, dynamic>{
      'name': instance.name,
      'titleFormat': instance.titleFormat,
      'descriptionEnable': instance.descriptionEnable,
      'description': instance.description,
      'type': instance.type,
      'display': instance.display,
      'position': instance.position,
      'required': instance.required,
      'restrictions': instance.restrictions,
      'restrictionsType': instance.restrictionsType,
      'adjustPrice': instance.adjustPrice,
      'priceType': instance.priceType,
      'price': instance.price,
      'min': instance.min,
      'max': instance.max,
      'options': instance.options,
    };

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
  label: json['label'] as String?,
  price: json['price'] as String?,
  image: json['image'] as String?,
  priceType: json['priceType'] as String?,
);

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
  'label': instance.label,
  'price': instance.price,
  'image': instance.image,
  'priceType': instance.priceType,
};

FluffyValue _$FluffyValueFromJson(Map<String, dynamic> json) => FluffyValue(
  the10707: json['the10707'] == null
      ? null
      : The10707.fromJson(json['the10707'] as Map<String, dynamic>),
  the8141: json['the8141'] == null
      ? null
      : The10707.fromJson(json['the8141'] as Map<String, dynamic>),
  prodFeaturedImg: json['prodFeaturedImg'] == null
      ? null
      : ProdImg.fromJson(json['prodFeaturedImg'] as Map<String, dynamic>),
  prodDealImg: json['prodDealImg'] == null
      ? null
      : ProdImg.fromJson(json['prodDealImg'] as Map<String, dynamic>),
  offerBadgeText: json['offerBadgeText'] as String?,
  prodDealDate: json['prodDealDate'] as String?,
  prodDealText: json['prodDealText'] as String?,
  discPercentOnoff: json['discPercentOnoff'] as String?,
  productStBgColor: json['productStBgColor'] as String?,
  productDisBgColor: json['productDisBgColor'] as String?,
  productImgBgColor: json['productImgBgColor'] as String?,
  the10736: json['the10736'] == null
      ? null
      : The10707.fromJson(json['the10736'] as Map<String, dynamic>),
  the0: json['the0'] as String?,
  time: (json['time'] as num?)?.toInt(),
  fonts: json['fonts'] as List<dynamic>,
  icons: json['icons'] as List<dynamic>,
  dynamicElementsIds: json['dynamicElementsIds'] as List<dynamic>,
  status: json['status'] as String?,
  css: json['css'] as String?,
  the8142: json['the8142'] == null
      ? null
      : The10707.fromJson(json['the8142'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FluffyValueToJson(FluffyValue instance) =>
    <String, dynamic>{
      'the10707': instance.the10707,
      'the8141': instance.the8141,
      'prodFeaturedImg': instance.prodFeaturedImg,
      'prodDealImg': instance.prodDealImg,
      'offerBadgeText': instance.offerBadgeText,
      'prodDealDate': instance.prodDealDate,
      'prodDealText': instance.prodDealText,
      'discPercentOnoff': instance.discPercentOnoff,
      'productStBgColor': instance.productStBgColor,
      'productDisBgColor': instance.productDisBgColor,
      'productImgBgColor': instance.productImgBgColor,
      'the10736': instance.the10736,
      'the0': instance.the0,
      'time': instance.time,
      'fonts': instance.fonts,
      'icons': instance.icons,
      'dynamicElementsIds': instance.dynamicElementsIds,
      'status': instance.status,
      'css': instance.css,
      'the8142': instance.the8142,
    };

ProdImg _$ProdImgFromJson(Map<String, dynamic> json) => ProdImg(
  url: json['url'] as String?,
  id: json['id'] as String?,
  width: json['width'] as String?,
  height: json['height'] as String?,
  thumbnail: json['thumbnail'] as String?,
  alt: json['alt'] as String?,
  title: json['title'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$ProdImgToJson(ProdImg instance) => <String, dynamic>{
  'url': instance.url,
  'id': instance.id,
  'width': instance.width,
  'height': instance.height,
  'thumbnail': instance.thumbnail,
  'alt': instance.alt,
  'title': instance.title,
  'description': instance.description,
};

The10707 _$The10707FromJson(Map<String, dynamic> json) => The10707(
  videoType: json['videoType'] as String?,
  uploadVideoId: json['uploadVideoId'] as String?,
  uploadVideoUrl: json['uploadVideoUrl'] as String?,
  youtubeUrl: json['youtubeUrl'] as String?,
  vimeoUrl: json['vimeoUrl'] as String?,
  autoplay: json['autoplay'] as String?,
  videoSize: json['videoSize'] as String?,
  videoControl: json['videoControl'] as String?,
  hideGalleryImg: json['hideGalleryImg'] as String?,
  hideInformation: json['hideInformation'] as String?,
  audioStatus: json['audioStatus'] as String?,
);

Map<String, dynamic> _$The10707ToJson(The10707 instance) => <String, dynamic>{
  'videoType': instance.videoType,
  'uploadVideoId': instance.uploadVideoId,
  'uploadVideoUrl': instance.uploadVideoUrl,
  'youtubeUrl': instance.youtubeUrl,
  'vimeoUrl': instance.vimeoUrl,
  'autoplay': instance.autoplay,
  'videoSize': instance.videoSize,
  'videoControl': instance.videoControl,
  'hideGalleryImg': instance.hideGalleryImg,
  'hideInformation': instance.hideInformation,
  'audioStatus': instance.audioStatus,
};
