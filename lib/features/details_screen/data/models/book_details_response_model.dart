import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'book_details_response_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class BookDetailsResponseModel {
  @HiveField(0)
  final String? id;
  @HiveField(1)
  final VolumeInfo? volumeInfo;
  @HiveField(2)
  final SaleInfo? saleInfo;
  @HiveField(3)
  final AccessInfo? accessInfo;

  BookDetailsResponseModel( {this.id, this.volumeInfo, this.saleInfo,this.accessInfo,});
  factory BookDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BookDetailsResponseModelFromJson(json);
}

@JsonSerializable()
@HiveType(typeId: 1)
class VolumeInfo {
  @HiveField(0)
  String? title;
  @HiveField(1)
  String? subtitle;
  @HiveField(2)
  List<String>? authors;
  @HiveField(3)
  String? publisher;
  @HiveField(4)
  String? publishedDate;
  @HiveField(5)
  String? description;
  @HiveField(6)
  int? pageCount;
  @HiveField(7)
  String? printType;
  @HiveField(8)
  List<String>? categories;
  @HiveField(9)
  ImageLinks? imageLinks;
  @HiveField(10)
  String? language;
  @HiveField(11)
  String? previewLink;
  @HiveField(12)
  String? infoLink;
  @HiveField(13)
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
@HiveType(typeId: 2)
class AccessInfo {
  @HiveField(0)
  final String? country;
  @HiveField(1)
  final String? viewability;
  @HiveField(2)
  final bool? embeddable;
  @HiveField(3)
  final bool? publicDomain;
  @HiveField(4)
  final String? textToSpeechPermission;
  @HiveField(5)
  final Pdf? pdf;
  @HiveField(6)
  final String? webReaderLink;
  @HiveField(7)
  final String? accessViewStatus;
  @HiveField(8)
  final bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });
  factory AccessInfo.fromJson(Map<String, dynamic> json) =>
      _$AccessInfoFromJson(json);
}

@JsonSerializable()
@HiveType(typeId: 3)
class SaleInfo {
  @HiveField(0)
  final String? country;
  @HiveField(1)
  final String? saleability;
  @HiveField(2)
  final bool? isEbook;
  @HiveField(3)
  final Price? listPrice;
  @HiveField(4)
  final Price? retailPrice;
  @HiveField(5)
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
@HiveType(typeId: 4)
class Price {
  @HiveField(0)
  final double? amount;
  @HiveField(1)
  final String? currencyCode;

  Price({
    this.amount,
    this.currencyCode,
  });

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);
}

@JsonSerializable()
@HiveType(typeId: 5)
class ImageLinks {
  @HiveField(0)
  final String? smallThumbnail;
  @HiveField(1)
  final String? thumbnail;
  @HiveField(2)
  final String? small;
  @HiveField(3)
  final String? medium;
  @HiveField(4)
  final String? large;

  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);
}

@JsonSerializable()
@HiveType(typeId: 6)
class Pdf {
  @HiveField(0)
  final String? downloadLink;
  @HiveField(1)
  final bool? isAvailable;

  Pdf({
    this.downloadLink,
    this.isAvailable,
  });
  factory Pdf.fromJson(Map<String, dynamic> json) => _$PdfFromJson(json);
}
