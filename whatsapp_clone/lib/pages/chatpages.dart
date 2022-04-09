import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/models.dart';
import 'package:whatsapp_clone/pages/chattile.dart';

class Chat extends StatefulWidget {
  Chat({Key key}) : super(key: key);

  List<ChatModel> chatlist = [
    ChatModel(
        avatar: "asset/images/personava.png",
        isgroup: false,
        message: 'Hii',
        name: 'Anu',
        updatedAt: '7.00 AM'),
    ChatModel(
        avatar: "asset/images/groupavatar.png",
        isgroup: true,
        message: 'Hii',
        name: 'baabte',
        updatedAt: '8.00 AM'),
    ChatModel(
        avatar: "asset/images/persav.png",
        isgroup: false,
        message: 'Hellooo',
        name: 'Peter',
        updatedAt: '6.00 AM'),
    ChatModel(
        avatar: " ",
        isgroup: true,
        message: 'Hellooo',
        name: 'cyber',
        updatedAt: '6.00 AM'),
    ChatModel(
        avatar: " ",
        isgroup: false,
        message: 'gd mng',
        name: 'raju',
        updatedAt: '6.00 AM')
  ];

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ChatTile(
            data: widget.chatlist[index],
          );
        },
        itemCount: widget.chatlist.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
        backgroundColor: const Color(0xFF075E54),
      ),
    );
  }
}
