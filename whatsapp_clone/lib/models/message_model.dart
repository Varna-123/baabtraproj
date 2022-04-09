// To parse this JSON data, do
//
//     final messageModel = messageModelFromJson(jsonString);

import 'dart:convert';

MessageModel messageModelFromJson(String str) => MessageModel.fromJson(json.decode(str));

String messageModelToJson(MessageModel data) => json.encode(data.toJson());

class MessageModel {
    MessageModel({
        this.isSent,
        this.isReaded,
        this.message,
        this.sentAt,
    });

    bool isSent;
    bool isReaded;
    String message;
    String sentAt;

    factory MessageModel.fromJson(Map<String, dynamic> json) => MessageModel(
        isSent: json["isSent"],
        isReaded: json["isReaded"],
        message: json["message"],
        sentAt: json["sent at"],
    );

    Map<String, dynamic> toJson() => {
        "isSent": isSent,
        "isReaded": isReaded,
        "message": message,
        "sent at": sentAt,
    };
}
