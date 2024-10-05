

import 'package:json_annotation/json_annotation.dart';
part 'home_books_response_model.g.dart';

@JsonSerializable()
class HomeBooksResponseModel{
  @JsonKey(name: 'items')
  final List<BookItems>? items;

  HomeBooksResponseModel({this.items});
  factory HomeBooksResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeBooksResponseModelFromJson(json);
}


@JsonSerializable()
class BookItems{
  final String? id;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;

  BookItems({this.id, this.volumeInfo,  this.saleInfo});
  factory BookItems.fromJson(Map<String, dynamic> json) =>
      _$BookItemsFromJson(json);
}



@JsonSerializable()
class VolumeInfo{
  String? title;
  String? subtitle;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  int? pageCount;
  String? printType;
  List<String>? categories;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo({
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.pageCount,
    this.printType,
    this.categories,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
}

@JsonSerializable()
class SaleInfo {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final Price? listPrice;
  final Price? retailPrice;
  final String? buyLink;

  SaleInfo({
     this.country,
     this.saleability,
     this.isEbook,
     this.listPrice,
     this.retailPrice,
     this.buyLink,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SaleInfoToJson(this);
}

@JsonSerializable()
class Price {
  final double? amount;
  final String? currencyCode;

  Price({
   this.amount,
   this.currencyCode,
  });

  factory Price.fromJson(Map<String, dynamic> json) =>
      _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);
}


@JsonSerializable()
class ImageLinks{
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);
}