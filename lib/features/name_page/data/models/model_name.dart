class ProductModel {
  ProductModel({
    required this.data,
    required this.message,
    required this.status,
  });

  final Data? data;
  final String message;
  final int status;

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
      message: json["message"] ?? "",
      status: json["status"] ?? 0,
    );
  }
}

class Data {
  Data({
    required this.ads,
    required this.section,
  });

  final List<dynamic> ads;
  final List<ProductDatum> section;

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      ads: json["ads"] == null
          ? []
          : List<dynamic>.from(json["ads"]!.map((x) => x)),
      section: json["section"] == null
          ? []
          : List<ProductDatum>.from(
              json["section"]!.map((x) => ProductDatum.fromJson(x))),
    );
  }
}

class ProductDatum {
  ProductDatum({
    required this.id,
    required this.image,
    required this.titleAr,
    required this.titleEn,
    required this.subsection,
  });

  final int id;
  final String image;
  final String titleAr;
  final String titleEn;
  final List<Subsection> subsection;

  factory ProductDatum.fromJson(Map<String, dynamic> json) {
    return ProductDatum(
      id: json["id"] ?? 0,
      image: json["image"] ?? "",
      titleAr: json["title_ar"] ?? "",
      titleEn: json["title_en"] ?? "",
      subsection: json["subsection"] == null
          ? []
          : List<Subsection>.from(
              json["subsection"]!.map((x) => Subsection.fromJson(x))),
    );
  }
}

class Subsection {
  Subsection({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    required this.price,
    required this.sectionId,
  });

  final int id;
  final String titleAr;
  final String titleEn;
  final String price;
  final String sectionId;

  factory Subsection.fromJson(Map<String, dynamic> json) {
    return Subsection(
      id: json["id"] ?? 0,
      titleAr: json["title_ar"] ?? "",
      titleEn: json["title_en"] ?? "",
      price: json["price"] ?? "",
      sectionId: json["section_id"] ?? "",
    );
  }
}
