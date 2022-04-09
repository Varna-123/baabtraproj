// To parse this JSON data, do
//
//     final chatModel = chatModelFromJson(jsonString);

import 'dart:convert';

ChatModel chatModelFromJson(String str) => ChatModel.fromJson(json.decode(str));

String chatModelToJson(ChatModel data) => json.encode(data.toJson());

class ChatModel {
  ChatModel({
    this.avatar,
    this.name,
    this.isgroup,
    this.updatedAt,
    this.message,
    this.status,
  });

  String avatar;
  String name;
  bool isgroup;
  String updatedAt;
  String message;
  String status;

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        avatar: json["avatar"],
        name: json["name"],
        isgroup: json["isgroup"],
        updatedAt: json["updated at"],
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "isgroup": isgroup,
        "updated at": updatedAt,
        "message": message,
        "status": status,
      };
}
