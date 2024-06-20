// To parse this JSON data, do
//
//     final newsDetailsModel = newsDetailsModelFromJson(jsonString);

import 'dart:convert';

NewsDetailsModel newsDetailsModelFromJson(String str) => NewsDetailsModel.fromJson(json.decode(str));

String newsDetailsModelToJson(NewsDetailsModel data) => json.encode(data.toJson());

class NewsDetailsModel {
  int? status;
  NewsDetailsModelData? data;

  NewsDetailsModel({
    this.status,
    this.data,
  });

  factory NewsDetailsModel.fromJson(Map<String, dynamic> json) => NewsDetailsModel(
    status: json["status"],
    data: json["data"] == null ? null : NewsDetailsModelData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data?.toJson(),
  };
}

class NewsDetailsModelData {
  DataData? data;

  NewsDetailsModelData({
    this.data,
  });

  factory NewsDetailsModelData.fromJson(Map<String, dynamic> json) => NewsDetailsModelData(
    data: json["data"] == null ? null : DataData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
  };
}

class DataData {
  int? id;
  String? slug;
  dynamic title;
  String? shortDescription;
  dynamic category;
  DateTime? publishedOn;
  dynamic publishedBy;
  String? topContent;
  List<dynamic>? content;
  dynamic bottomText;
  dynamic bottomButtonText;
  dynamic bottomButtonUrl;
  dynamic bottomButtonTarget;
  FeaturedImage? featuredImage;
  dynamic bannerImage;
  String? browserTitle;
  dynamic ogTitle;
  String? metaDescription;
  dynamic ogDescription;
  dynamic ogImage;
  dynamic metaKeywords;
  dynamic bottomDescription;
  String? extraJs;
  dynamic visitCount;
  List<Tag>? tags;
  List<RelatedBlog>? relatedBlogs;

  DataData({
    this.id,
    this.slug,
    this.title,
    this.shortDescription,
    this.category,
    this.publishedOn,
    this.publishedBy,
    this.topContent,
    this.content,
    this.bottomText,
    this.bottomButtonText,
    this.bottomButtonUrl,
    this.bottomButtonTarget,
    this.featuredImage,
    this.bannerImage,
    this.browserTitle,
    this.ogTitle,
    this.metaDescription,
    this.ogDescription,
    this.ogImage,
    this.metaKeywords,
    this.bottomDescription,
    this.extraJs,
    this.visitCount,
    this.tags,
    this.relatedBlogs,
  });

  factory DataData.fromJson(Map<String, dynamic> json) => DataData(
    id: json["id"],
    slug: json["slug"],
    title: json["title"],
    shortDescription: json["short_description"],
    category: json["category"],
    publishedOn: json["published_on"] == null ? null : DateTime.parse(json["published_on"]),
    publishedBy: json["published_by"],
    topContent: json["top_content"],
    content: json["content"] == null ? [] : List<dynamic>.from(json["content"]!.map((x) => x)),
    bottomText: json["bottom_text"],
    bottomButtonText: json["bottom_button_text"],
    bottomButtonUrl: json["bottom_button_url"],
    bottomButtonTarget: json["bottom_button_target"],
    featuredImage: json["featured_image"] == null ? null : FeaturedImage.fromJson(json["featured_image"]),
    bannerImage: json["banner_image"],
    browserTitle: json["browser_title"],
    ogTitle: json["og_title"],
    metaDescription: json["meta_description"],
    ogDescription: json["og_description"],
    ogImage: json["og_image"],
    metaKeywords: json["meta_keywords"],
    bottomDescription: json["bottom_description"],
    extraJs: json["extra_js"],
    visitCount: json["visit_count"],
    tags: json["tags"] == null ? [] : List<Tag>.from(json["tags"]!.map((x) => Tag.fromJson(x))),
    relatedBlogs: json["related_blogs"] == null ? [] : List<RelatedBlog>.from(json["related_blogs"]!.map((x) => RelatedBlog.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slug": slug,
    "title": title,
    "short_description": shortDescription,
    "category": category,
    "published_on": publishedOn?.toIso8601String(),
    "published_by": publishedBy,
    "top_content": topContent,
    "content": content == null ? [] : List<dynamic>.from(content!.map((x) => x)),
    "bottom_text": bottomText,
    "bottom_button_text": bottomButtonText,
    "bottom_button_url": bottomButtonUrl,
    "bottom_button_target": bottomButtonTarget,
    "featured_image": featuredImage?.toJson(),
    "banner_image": bannerImage,
    "browser_title": browserTitle,
    "og_title": ogTitle,
    "meta_description": metaDescription,
    "og_description": ogDescription,
    "og_image": ogImage,
    "meta_keywords": metaKeywords,
    "bottom_description": bottomDescription,
    "extra_js": extraJs,
    "visit_count": visitCount,
    "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x.toJson())),
    "related_blogs": relatedBlogs == null ? [] : List<dynamic>.from(relatedBlogs!.map((x) => x.toJson())),
  };
}

class FeaturedImage {
  String? fileName;
  String? filePath;
  String? fileType;
  int? fileSize;
  String? mediaType;
  dynamic altText;
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
    fileType: json["file_type"],
    fileSize: json["file_size"],
    mediaType: json["media_type"],
    altText: json["alt_text"],
    title: json["title"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "file_name": fileName,
    "file_path": filePath,
    "file_type": fileType,
    "file_size": fileSize,
    "media_type": mediaType,
    "alt_text": altText,
    "title": title,
    "description": description,
  };
}

class RelatedBlog {
  int? id;
  String? slug;
  String? title;
  String? name;
  String? shortDescription;
  dynamic category;
  DateTime? publishedOn;
  dynamic publishedBy;
  FeaturedImage? featuredImage;
  List<Tag>? tags;

  RelatedBlog({
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

  factory RelatedBlog.fromJson(Map<String, dynamic> json) => RelatedBlog(
    id: json["id"],
    slug: json["slug"],
    title: json["title"],
    name: json["name"],
    shortDescription: json["short_description"],
    category: json["category"],
    publishedOn: json["published_on"] == null ? null : DateTime.parse(json["published_on"]),
    publishedBy: json["published_by"],
    featuredImage: json["featured_image"] == null ? null : FeaturedImage.fromJson(json["featured_image"]),
    tags: json["tags"] == null ? [] : List<Tag>.from(json["tags"]!.map((x) => Tag.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slug": slug,
    "title": title,
    "name": name,
    "short_description": shortDescription,
    "category": category,
    "published_on": publishedOn?.toIso8601String(),
    "published_by": publishedBy,
    "featured_image": featuredImage?.toJson(),
    "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x.toJson())),
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
