// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_details_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookDetailsResponseModelAdapter
    extends TypeAdapter<BookDetailsResponseModel> {
  @override
  final int typeId = 0;

  @override
  BookDetailsResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookDetailsResponseModel(
      id: fields[0] as String?,
      volumeInfo: fields[1] as VolumeInfo?,
      saleInfo: fields[2] as SaleInfo?,
      accessInfo: fields[3] as AccessInfo?,
    );
  }

  @override
  void write(BinaryWriter writer, BookDetailsResponseModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.volumeInfo)
      ..writeByte(2)
      ..write(obj.saleInfo)
      ..writeByte(3)
      ..write(obj.accessInfo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookDetailsResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VolumeInfoAdapter extends TypeAdapter<VolumeInfo> {
  @override
  final int typeId = 1;

  @override
  VolumeInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VolumeInfo(
      title: fields[0] as String?,
      subtitle: fields[1] as String?,
      authors: (fields[2] as List?)?.cast<String>(),
      publisher: fields[3] as String?,
      publishedDate: fields[4] as String?,
      description: fields[5] as String?,
      pageCount: fields[6] as int?,
      printType: fields[7] as String?,
      categories: (fields[8] as List?)?.cast<String>(),
      imageLinks: fields[9] as ImageLinks?,
      language: fields[10] as String?,
      previewLink: fields[11] as String?,
      infoLink: fields[12] as String?,
      canonicalVolumeLink: fields[13] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, VolumeInfo obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.subtitle)
      ..writeByte(2)
      ..write(obj.authors)
      ..writeByte(3)
      ..write(obj.publisher)
      ..writeByte(4)
      ..write(obj.publishedDate)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.pageCount)
      ..writeByte(7)
      ..write(obj.printType)
      ..writeByte(8)
      ..write(obj.categories)
      ..writeByte(9)
      ..write(obj.imageLinks)
      ..writeByte(10)
      ..write(obj.language)
      ..writeByte(11)
      ..write(obj.previewLink)
      ..writeByte(12)
      ..write(obj.infoLink)
      ..writeByte(13)
      ..write(obj.canonicalVolumeLink);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VolumeInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AccessInfoAdapter extends TypeAdapter<AccessInfo> {
  @override
  final int typeId = 2;

  @override
  AccessInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AccessInfo(
      country: fields[0] as String?,
      viewability: fields[1] as String?,
      embeddable: fields[2] as bool?,
      publicDomain: fields[3] as bool?,
      textToSpeechPermission: fields[4] as String?,
      pdf: fields[5] as Pdf?,
      webReaderLink: fields[6] as String?,
      accessViewStatus: fields[7] as String?,
      quoteSharingAllowed: fields[8] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, AccessInfo obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.country)
      ..writeByte(1)
      ..write(obj.viewability)
      ..writeByte(2)
      ..write(obj.embeddable)
      ..writeByte(3)
      ..write(obj.publicDomain)
      ..writeByte(4)
      ..write(obj.textToSpeechPermission)
      ..writeByte(5)
      ..write(obj.pdf)
      ..writeByte(6)
      ..write(obj.webReaderLink)
      ..writeByte(7)
      ..write(obj.accessViewStatus)
      ..writeByte(8)
      ..write(obj.quoteSharingAllowed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccessInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SaleInfoAdapter extends TypeAdapter<SaleInfo> {
  @override
  final int typeId = 3;

  @override
  SaleInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SaleInfo(
      country: fields[0] as String?,
      saleability: fields[1] as String?,
      isEbook: fields[2] as bool?,
      listPrice: fields[3] as Price?,
      retailPrice: fields[4] as Price?,
      buyLink: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SaleInfo obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.country)
      ..writeByte(1)
      ..write(obj.saleability)
      ..writeByte(2)
      ..write(obj.isEbook)
      ..writeByte(3)
      ..write(obj.listPrice)
      ..writeByte(4)
      ..write(obj.retailPrice)
      ..writeByte(5)
      ..write(obj.buyLink);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaleInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PriceAdapter extends TypeAdapter<Price> {
  @override
  final int typeId = 4;

  @override
  Price read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Price(
      amount: fields[0] as double?,
      currencyCode: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Price obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.amount)
      ..writeByte(1)
      ..write(obj.currencyCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PriceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ImageLinksAdapter extends TypeAdapter<ImageLinks> {
  @override
  final int typeId = 5;

  @override
  ImageLinks read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImageLinks(
      smallThumbnail: fields[0] as String?,
      thumbnail: fields[1] as String?,
      small: fields[2] as String?,
      medium: fields[3] as String?,
      large: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ImageLinks obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.smallThumbnail)
      ..writeByte(1)
      ..write(obj.thumbnail)
      ..writeByte(2)
      ..write(obj.small)
      ..writeByte(3)
      ..write(obj.medium)
      ..writeByte(4)
      ..write(obj.large);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageLinksAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PdfAdapter extends TypeAdapter<Pdf> {
  @override
  final int typeId = 6;

  @override
  Pdf read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pdf(
      downloadLink: fields[0] as String?,
      isAvailable: fields[1] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Pdf obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.downloadLink)
      ..writeByte(1)
      ..write(obj.isAvailable);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PdfAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDetailsResponseModel _$BookDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    BookDetailsResponseModel(
      id: json['id'] as String?,
      volumeInfo: json['volumeInfo'] == null
          ? null
          : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
      saleInfo: json['saleInfo'] == null
          ? null
          : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
      accessInfo: json['accessInfo'] == null
          ? null
          : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookDetailsResponseModelToJson(
        BookDetailsResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'volumeInfo': instance.volumeInfo,
      'saleInfo': instance.saleInfo,
      'accessInfo': instance.accessInfo,
    };

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) => VolumeInfo(
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      authors:
          (json['authors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      publisher: json['publisher'] as String?,
      publishedDate: json['publishedDate'] as String?,
      description: json['description'] as String?,
      pageCount: (json['pageCount'] as num?)?.toInt(),
      printType: json['printType'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imageLinks: json['imageLinks'] == null
          ? null
          : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
      language: json['language'] as String?,
      previewLink: json['previewLink'] as String?,
      infoLink: json['infoLink'] as String?,
      canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
    );

Map<String, dynamic> _$VolumeInfoToJson(VolumeInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'publishedDate': instance.publishedDate,
      'description': instance.description,
      'pageCount': instance.pageCount,
      'printType': instance.printType,
      'categories': instance.categories,
      'imageLinks': instance.imageLinks,
      'language': instance.language,
      'previewLink': instance.previewLink,
      'infoLink': instance.infoLink,
      'canonicalVolumeLink': instance.canonicalVolumeLink,
    };

AccessInfo _$AccessInfoFromJson(Map<String, dynamic> json) => AccessInfo(
      country: json['country'] as String?,
      viewability: json['viewability'] as String?,
      embeddable: json['embeddable'] as bool?,
      publicDomain: json['publicDomain'] as bool?,
      textToSpeechPermission: json['textToSpeechPermission'] as String?,
      pdf: json['pdf'] == null
          ? null
          : Pdf.fromJson(json['pdf'] as Map<String, dynamic>),
      webReaderLink: json['webReaderLink'] as String?,
      accessViewStatus: json['accessViewStatus'] as String?,
      quoteSharingAllowed: json['quoteSharingAllowed'] as bool?,
    );

Map<String, dynamic> _$AccessInfoToJson(AccessInfo instance) =>
    <String, dynamic>{
      'country': instance.country,
      'viewability': instance.viewability,
      'embeddable': instance.embeddable,
      'publicDomain': instance.publicDomain,
      'textToSpeechPermission': instance.textToSpeechPermission,
      'pdf': instance.pdf,
      'webReaderLink': instance.webReaderLink,
      'accessViewStatus': instance.accessViewStatus,
      'quoteSharingAllowed': instance.quoteSharingAllowed,
    };

SaleInfo _$SaleInfoFromJson(Map<String, dynamic> json) => SaleInfo(
      country: json['country'] as String?,
      saleability: json['saleability'] as String?,
      isEbook: json['isEbook'] as bool?,
      listPrice: json['listPrice'] == null
          ? null
          : Price.fromJson(json['listPrice'] as Map<String, dynamic>),
      retailPrice: json['retailPrice'] == null
          ? null
          : Price.fromJson(json['retailPrice'] as Map<String, dynamic>),
      buyLink: json['buyLink'] as String?,
    );

Map<String, dynamic> _$SaleInfoToJson(SaleInfo instance) => <String, dynamic>{
      'country': instance.country,
      'saleability': instance.saleability,
      'isEbook': instance.isEbook,
      'listPrice': instance.listPrice,
      'retailPrice': instance.retailPrice,
      'buyLink': instance.buyLink,
    };

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
      amount: (json['amount'] as num?)?.toDouble(),
      currencyCode: json['currencyCode'] as String?,
    );

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
    };

ImageLinks _$ImageLinksFromJson(Map<String, dynamic> json) => ImageLinks(
      smallThumbnail: json['smallThumbnail'] as String?,
      thumbnail: json['thumbnail'] as String?,
      small: json['small'] as String?,
      medium: json['medium'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$ImageLinksToJson(ImageLinks instance) =>
    <String, dynamic>{
      'smallThumbnail': instance.smallThumbnail,
      'thumbnail': instance.thumbnail,
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
    };

Pdf _$PdfFromJson(Map<String, dynamic> json) => Pdf(
      downloadLink: json['downloadLink'] as String?,
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$PdfToJson(Pdf instance) => <String, dynamic>{
      'downloadLink': instance.downloadLink,
      'isAvailable': instance.isAvailable,
    };
