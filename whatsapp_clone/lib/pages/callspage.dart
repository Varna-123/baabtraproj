import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/models.dart';
import 'package:whatsapp_clone/pages/callstile.dart';
import 'package:whatsapp_clone/pages/chattile.dart';

class Calls extends StatelessWidget {
  Calls({Key key}) : super(key: key);

  List<ChatModel> chatlist = [
    ChatModel(
      status: '8 minutes ago',
      avatar:
          'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50',
      name: 'Anu',
    ),
    ChatModel(
      avatar: '',
      name: 'baabtra',
      status: '27 minutes ago',
    ),
    ChatModel(
        avatar:
            'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50',
        name: 'PETER',
        status: '17 minutes ago'),
    ChatModel(avatar: '', name: 'cyber', status: '10 minutes ago'),
    ChatModel(
      avatar: '',
      name: 'raju',
      status: '1 day ago',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Callstile(
            data: chatlist[index],
          );
        },
        itemCount: chatlist.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_call),
        backgroundColor: const Color(0xFF075E54),
      ),
    );
  }
}
