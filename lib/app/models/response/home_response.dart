// To parse this JSON data, do
//
//     final homeResponse = homeResponseFromJson(jsonString);

import 'dart:convert';

HomeResponse homeResponseFromJson(String str) => HomeResponse.fromJson(json.decode(str));

String homeResponseToJson(HomeResponse data) => json.encode(data.toJson());

class HomeResponse {
    HomeResponse({
        this.posts,
        this.total,
        this.skip,
        this.limit,
    });

    List<Post>? posts;
    int? total;
    int? skip;
    int? limit;

    factory HomeResponse.fromJson(Map<String, dynamic> json) => HomeResponse(
        posts: List<Post>.from(json["posts"].map((x) => Post.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
    );

    Map<String, dynamic> toJson() => {
        "posts": List<dynamic>.from(posts!.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
    };
}

class Post {
    Post({
        this.id,
        this.title,
        this.body,
        this.userId,
        this.tags,
        this.reactions,
    });

    int? id;
    String? title;
    String? body;
    int? userId;
    List<String>? tags;
    int? reactions;

    factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        title: json["title"],
        body: json["body"],
        userId: json["userId"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        reactions: json["reactions"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "body": body,
        "userId": userId,
        "tags": List<dynamic>.from(tags!.map((x) => x)),
        "reactions": reactions,
    };
}
