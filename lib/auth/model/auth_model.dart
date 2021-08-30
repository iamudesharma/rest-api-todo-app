// To parse this JSON data, do
//
//     final authResultModel = authResultModelFromJson(jsonString);

import 'dart:convert';

AuthResultModel authResultModelFromJson(String str) =>
    AuthResultModel.fromJson(json.decode(str));

String authResultModelToJson(AuthResultModel data) =>
    json.encode(data.toJson());

class AuthResultModel {
  AuthResultModel({
    required this.jwt,
    required this.user,
  });

  String jwt;
  User user;

  factory AuthResultModel.fromJson(Map<String, dynamic> json) =>
      AuthResultModel(
        jwt: json["jwt"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "jwt": jwt,
        "user": user.toJson(),
      };
}

class User {
  User({
    this.id,
    this.username,
    this.email,
    this.provider,
    this.confirmed,
    this.blocked,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? username;
  String? email;
  String? provider;
  bool? confirmed;
  bool? blocked;
  Role? role;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        provider: json["provider"],
        confirmed: json["confirmed"],
        blocked: json["blocked"],
        role: Role.fromJson(json["role"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "provider": provider,
        "confirmed": confirmed,
        "blocked": blocked,
        "role": role?.toJson(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class Role {
  Role({
    this.id,
    this.name,
    this.description,
    this.type,
  });

  int ?id;
  String? name;
  String ?description;
  String ?type;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "type": type,
      };
}
