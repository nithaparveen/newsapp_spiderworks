// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  int? status;
  Data? data;

  NewsModel({
    this.status,
    this.data,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
    status: json["status"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data?.toJson(),
  };
}

class Data {
  List<Datum>? data;
  Links? links;
  Meta? meta;

  Data({
    this.data,
    this.links,
    this.meta,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    links: json["links"] == null ? null : Links.fromJson(json["links"]),
    meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "links": links?.toJson(),
    "meta": meta?.toJson(),
  };
}

class Datum {
  int? id;
  String? slug;
  String? title;
  String? name;
  String? shortDescription;
  Category? category;
  DateTime? publishedOn;
  PublishedBy? publishedBy;
  FeaturedImage? featuredImage;
  List<Tag>? tags;

  Datum({
    this.id,
    this.slug,
    this.title,
    this.name,
    this.shortDescription,
    this.category,
    this.publishedOn,
    this.publishedBy,
    this.featuredImage,
    this.tags,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    slug: json["slug"],
    title: json["title"],
    name: json["name"],
    shortDescription: json["short_description"],
    category: json["category"] == null ? null : Category.fromJson(json["category"]),
    publishedOn: json["published_on"] == null ? null : DateTime.parse(json["published_on"]),
    publishedBy: json["published_by"] == null ? null : PublishedBy.fromJson(json["published_by"]),
    featuredImage: json["featured_image"] == null ? null : FeaturedImage.fromJson(json["featured_image"]),
    tags: json["tags"] == null ? [] : List<Tag>.from(json["tags"]!.map((x) => Tag.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slug": slug,
    "title": title,
    "name": name,
    "short_description": shortDescription,
    "category": category?.toJson(),
    "published_on": publishedOn?.toIso8601String(),
    "published_by": publishedBy?.toJson(),
    "featured_image": featuredImage?.toJson(),
    "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x.toJson())),
  };
}

class Category {
  int? id;
  String? slug;
  String? name;
  String? title;
  FeaturedImage? featuredImage;

  Category({
    this.id,
    this.slug,
    this.name,
    this.title,
    this.featuredImage,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    slug: json["slug"],
    name: json["name"],
    title: json["title"],
    featuredImage: json["featured_image"] == null ? null : FeaturedImage.fromJson(json["featured_image"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slug": slug,
    "name": name,
    "title": title,
    "featured_image": featuredImage?.toJson(),
  };
}

class FeaturedImage {
  String? fileName;
  String? filePath;
  FileType? fileType;
  int? fileSize;
  MediaType? mediaType;
  String? altText;
  dynamic title;
  dynamic description;

  FeaturedImage({
    this.fileName,
    this.filePath,
    this.fileType,
    this.fileSize,
    this.mediaType,
    this.altText,
    this.title,
    this.description,
  });

  factory FeaturedImage.fromJson(Map<String, dynamic> json) => FeaturedImage(
    fileName: json["file_name"],
    filePath: json["file_path"],
    fileType: fileTypeValues.map[json["file_type"]]!,
    fileSize: json["file_size"],
    mediaType: mediaTypeValues.map[json["media_type"]]!,
    altText: json["alt_text"],
    title: json["title"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "file_name": fileName,
    "file_path": filePath,
    "file_type": fileTypeValues.reverse[fileType],
    "file_size": fileSize,
    "media_type": mediaTypeValues.reverse[mediaType],
    "alt_text": altText,
    "title": title,
    "description": description,
  };
}

enum FileType {
  IMAGE_JPEG,
  IMAGE_PNG,
  IMAGE_WEBP
}

final fileTypeValues = EnumValues({
  "image/jpeg": FileType.IMAGE_JPEG,
  "image/png": FileType.IMAGE_PNG,
  "image/webp": FileType.IMAGE_WEBP
});

enum MediaType {
  IMAGE
}

final mediaTypeValues = EnumValues({
  "Image": MediaType.IMAGE
});

class PublishedBy {
  int? id;
  String? name;
  String? designation;
  dynamic shortDescription;
  dynamic facebookLink;
  dynamic twitterLink;
  dynamic linkedinLink;
  dynamic instagramLink;
  dynamic youtubeLink;
  FeaturedImage? featuredImage;

  PublishedBy({
    this.id,
    this.name,
    this.designation,
    this.shortDescription,
    this.facebookLink,
    this.twitterLink,
    this.linkedinLink,
    this.instagramLink,
    this.youtubeLink,
    this.featuredImage,
  });

  factory PublishedBy.fromJson(Map<String, dynamic> json) => PublishedBy(
    id: json["id"],
    name: json["name"],
    designation: json["designation"],
    shortDescription: json["short_description"],
    facebookLink: json["facebook_link"],
    twitterLink: json["twitter_link"],
    linkedinLink: json["linkedin_link"],
    instagramLink: json["instagram_link"],
    youtubeLink: json["youtube_link"],
    featuredImage: json["featured_image"] == null ? null : FeaturedImage.fromJson(json["featured_image"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "designation": designation,
    "short_description": shortDescription,
    "facebook_link": facebookLink,
    "twitter_link": twitterLink,
    "linkedin_link": linkedinLink,
    "instagram_link": instagramLink,
    "youtube_link": youtubeLink,
    "featured_image": featuredImage?.toJson(),
  };
}

class Tag {
  String? slug;
  String? name;

  Tag({
    this.slug,
    this.name,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
    slug: json["slug"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "slug": slug,
    "name": name,
  };
}

class Links {
  String? first;
  String? last;
  dynamic prev;
  String? next;

  Links({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    first: json["first"],
    last: json["last"],
    prev: json["prev"],
    next: json["next"],
  );

  Map<String, dynamic> toJson() => {
    "first": first,
    "last": last,
    "prev": prev,
    "next": next,
  };
}

class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  List<Link>? links;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    currentPage: json["current_page"],
    from: json["from"],
    lastPage: json["last_page"],
    links: json["links"] == null ? [] : List<Link>.from(json["links"]!.map((x) => Link.fromJson(x))),
    path: json["path"],
    perPage: json["per_page"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "from": from,
    "last_page": lastPage,
    "links": links == null ? [] : List<dynamic>.from(links!.map((x) => x.toJson())),
    "path": path,
    "per_page": perPage,
    "to": to,
    "total": total,
  };
}

class Link {
  String? url;
  String? label;
  bool? active;

  Link({
    this.url,
    this.label,
    this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"],
    label: json["label"],
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "label": label,
    "active": active,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
