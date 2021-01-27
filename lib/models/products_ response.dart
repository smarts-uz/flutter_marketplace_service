import 'dart:convert';

class ProductsResponse {
  ProductsResponse({
    this.data,
    this.links,
    this.meta,
    this.success,
    this.status,
  });

  final List<Product> data;
  final ProductsResponseLinks links;
  final Meta meta;
  final bool success;
  final int status;

  factory ProductsResponse.fromJson(String str) =>
      ProductsResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductsResponse.fromMap(Map<String, dynamic> json) =>
      ProductsResponse(
        data: List<Product>.from(json["data"].map((x) => Product.fromMap(x))),
        links: ProductsResponseLinks.fromMap(json["links"]),
        meta: Meta.fromMap(json["meta"]),
        success: json["success"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "links": links.toMap(),
        "meta": meta.toMap(),
        "success": success,
        "status": status,
      };
}

class Product {
  Product({
    this.id,
    this.name,
    this.photos,
    this.thumbnailImage,
    this.basePrice,
    this.baseDiscountedPrice,
    this.todaysDeal,
    this.featured,
    this.unit,
    this.discount,
    this.discountType,
    this.rating,
    this.sales,
    this.links,
  });

  final int id;
  final String name;
  final List<String> photos;
  final String thumbnailImage;
  final int basePrice;
  final int baseDiscountedPrice;
  final int todaysDeal;
  final int featured;
  final String unit;
  final int discount;
  final String discountType;
  final int rating;
  final int sales;
  final ProductLinks links;

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        photos: List<String>.from(json["photos"].map((x) => x)),
        thumbnailImage: json["thumbnail_image"],
        basePrice: json["base_price"],
        baseDiscountedPrice: json["base_discounted_price"],
        todaysDeal: json["todays_deal"],
        featured: json["featured"],
        unit: json["unit"],
        discount: json["discount"],
        discountType: json["discount_type"],
        rating: json["rating"],
        sales: json["sales"],
        links: ProductLinks.fromMap(json["links"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "photos": List<dynamic>.from(photos.map((x) => x)),
        "thumbnail_image": thumbnailImage,
        "base_price": basePrice,
        "base_discounted_price": baseDiscountedPrice,
        "todays_deal": todaysDeal,
        "featured": featured,
        "unit": unit,
        "discount": discount,
        "discount_type": discountType,
        "rating": rating,
        "sales": sales,
        "links": links.toMap(),
      };
}

class ProductLinks {
  ProductLinks({
    this.details,
    this.reviews,
    this.related,
    this.topFromSeller,
  });

  final String details;
  final String reviews;
  final String related;
  final String topFromSeller;

  factory ProductLinks.fromJson(String str) =>
      ProductLinks.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductLinks.fromMap(Map<String, dynamic> json) => ProductLinks(
        details: json["details"],
        reviews: json["reviews"],
        related: json["related"],
        topFromSeller: json["top_from_seller"],
      );

  Map<String, dynamic> toMap() => {
        "details": details,
        "reviews": reviews,
        "related": related,
        "top_from_seller": topFromSeller,
      };
}

class ProductsResponseLinks {
  ProductsResponseLinks({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  final String first;
  final String last;
  final dynamic prev;
  final dynamic next;

  factory ProductsResponseLinks.fromJson(String str) =>
      ProductsResponseLinks.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductsResponseLinks.fromMap(Map<String, dynamic> json) =>
      ProductsResponseLinks(
        first: json["first"],
        last: json["last"],
        prev: json["prev"],
        next: json["next"],
      );

  Map<String, dynamic> toMap() => {
        "first": first,
        "last": last,
        "prev": prev,
        "next": next,
      };
}

class Meta {
  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  final int currentPage;
  final int from;
  final int lastPage;
  final String path;
  final int perPage;
  final int to;
  final int total;

  factory Meta.fromJson(String str) => Meta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        currentPage: json["current_page"],
        from: json["from"],
        lastPage: json["last_page"],
        path: json["path"],
        perPage: json["per_page"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toMap() => {
        "current_page": currentPage,
        "from": from,
        "last_page": lastPage,
        "path": path,
        "per_page": perPage,
        "to": to,
        "total": total,
      };
}