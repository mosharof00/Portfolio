// To parse this JSON data, do
//
//     final projectModel = projectModelFromJson(jsonString);

import 'dart:convert';

ProjectModel projectModelFromJson(String str) => ProjectModel.fromJson(json.decode(str));

String projectModelToJson(ProjectModel data) => json.encode(data.toJson());

class ProjectModel {
  String? id;
  String? title;
  String? subTitle;
  String? description;
  List<String>? imageUrls;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic videoLink;
  dynamic githubLink;
  dynamic playStoreLink;
  dynamic otherPublishedLink;
  dynamic coverImageUrl;
  dynamic profileImageUrl;

  ProjectModel({
    this.id,
    this.title,
    this.subTitle,
    this.description,
    this.imageUrls,
    this.createdAt,
    this.updatedAt,
    this.videoLink,
    this.githubLink,
    this.playStoreLink,
    this.otherPublishedLink,
    this.coverImageUrl,
    this.profileImageUrl,
  });

  ProjectModel copyWith({
    String? id,
    String? title,
    String? subTitle,
    String? description,
    List<String>? imageUrls,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic videoLink,
    dynamic githubLink,
    dynamic playStoreLink,
    dynamic otherPublishedLink,
    dynamic coverImageUrl,
    dynamic profileImageUrl,
  }) =>
      ProjectModel(
        id: id ?? this.id,
        title: title ?? this.title,
        subTitle: subTitle ?? this.subTitle,
        description: description ?? this.description,
        imageUrls: imageUrls ?? this.imageUrls,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        videoLink: videoLink ?? this.videoLink,
        githubLink: githubLink ?? this.githubLink,
        playStoreLink: playStoreLink ?? this.playStoreLink,
        otherPublishedLink: otherPublishedLink ?? this.otherPublishedLink,
        coverImageUrl: coverImageUrl ?? this.coverImageUrl,
        profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      );

  factory ProjectModel.fromJson(Map<String, dynamic> json) => ProjectModel(
    id: json["id"],
    title: json["title"],
    subTitle: json["sub_title"],
    description: json["description"],
    imageUrls: json["image_urls"] == null ? [] : List<String>.from(json["image_urls"]!.map((x) => x)),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    videoLink: json["video_link"],
    githubLink: json["github_link"],
    playStoreLink: json["play_store_link"],
    otherPublishedLink: json["other_published_link"],
    coverImageUrl: json["cover_image_url"],
    profileImageUrl: json["profile_image_url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "sub_title": subTitle,
    "description": description,
    "image_urls": imageUrls == null ? [] : List<dynamic>.from(imageUrls!.map((x) => x)),
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "video_link": videoLink,
    "github_link": githubLink,
    "play_store_link": playStoreLink,
    "other_published_link": otherPublishedLink,
    "cover_image_url": coverImageUrl,
    "profile_image_url": profileImageUrl,
  };
}
