// To parse this JSON data, do
//
//     final projectDemoModel = projectDemoModelFromJson(jsonString);

import 'dart:convert';

List<ProjectDemoModel> projectDemoModelFromJson(String str) =>
    List<ProjectDemoModel>.from(
        json.decode(str).map((x) => ProjectDemoModel.fromJson(x)));

String projectDemoModelToJson(List<ProjectDemoModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProjectDemoModel {
  String? id;
  String? title;
  String? subTitle;
  dynamic description;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic videoLink;
  String? githubLink;
  dynamic playStoreLink;
  dynamic otherPublishedLink;
  String? coverImageUrl;
  String? profileImageUrl;

  ProjectDemoModel({
    this.id,
    this.title,
    this.subTitle,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.videoLink,
    this.githubLink,
    this.playStoreLink,
    this.otherPublishedLink,
    this.coverImageUrl,
    this.profileImageUrl,
  });

  ProjectDemoModel copyWith({
    String? id,
    String? title,
    String? subTitle,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic videoLink,
    String? githubLink,
    dynamic playStoreLink,
    String? otherPublishedLink,
    String? coverImageUrl,
    String? profileImageUrl,
  }) =>
      ProjectDemoModel(
        id: id ?? this.id,
        title: title ?? this.title,
        subTitle: subTitle ?? this.subTitle,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        videoLink: videoLink ?? this.videoLink,
        githubLink: githubLink ?? this.githubLink,
        playStoreLink: playStoreLink ?? this.playStoreLink,
        otherPublishedLink: otherPublishedLink ?? this.otherPublishedLink,
        coverImageUrl: coverImageUrl ?? this.coverImageUrl,
        profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      );

  factory ProjectDemoModel.fromJson(Map<String, dynamic> json) =>
      ProjectDemoModel(
        id: json["id"],
        title: json["title"],
        subTitle: json["sub_title"],
        description: json["description"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
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
