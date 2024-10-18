import 'package:json_annotation/json_annotation.dart';
part 'book_details_response_model.g.dart';
@JsonSerializable()
class BookDetailsResponseModel {
  final String? id;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;

  BookDetailsResponseModel( {this.id, this.volumeInfo, this.saleInfo,this.accessInfo,});
  factory BookDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BookDetailsResponseModelFromJson(json);
}

@JsonSerializable()
class VolumeInfo {
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
class AccessInfo {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Pdf? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
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

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);
}

@JsonSerializable()
class ImageLinks {
  final String? smallThumbnail;
  final String? thumbnail;
  final String? small;
  final String? medium;
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
class Pdf {
  final String? downloadLink;
  final bool? isAvailable;

  Pdf({
    this.downloadLink,
    this.isAvailable,
  });
  factory Pdf.fromJson(Map<String, dynamic> json) => _$PdfFromJson(json);
}
